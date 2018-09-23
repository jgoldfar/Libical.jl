export Property

mutable struct Property{T}
    ref::T
    function Property(ref::T) where {T<:Ptr}
        if ref == C_NULL || ref == nothing
            error("Properties cannot be null.")
        end
        new{T}(ref)
    end
end

function propDeleter(p::Property)
    if p.ref != C_NULL && icalproperty_get_parent(p.ref) == C_NULL
        icalproperty_free(p.ref)
    end
end

function Property(kind::String)
    if !isempty(kind)
        ref = icalproperty_new(icalproperty_string_to_kind(kind))
        if startswith(kind, "X-")
            icalproperty_set_x_name(ref, kind)
        end

        p = Property(ref)

        @compat finalizer(propDeleter, p)
        p
    else
        error("Property may not have unspecified kind.")
    end
end

const Time = Property
const Period = Property
const Duration = Property
const Attach = Property
const Attendee = Property
const Organizer = Property

@static if VERSION >= v"0.7-"
    # Enums offer a better interface, but this only works on v0.7+
    include("PropertyKinds.jl")
    using .PropertyKinds
    export PropertyKinds
end

function Base.show(io::IO, p::Property)
    pname = name(p)
    str = value(p)
    if get(io, :compact, false)
        print(io, "Property(\"", pname, ":", str, "\")")
    else
        nstr = length(str)
        print(io, "Property(\"", pname, ":", str[1:min(7, nstr)], "...\")")
    end
end

Base.unsafe_convert(::Type{Ptr{T}}, p::Property{T}) where {T} = p.ref

function name(p::Property)
    nref = icalproperty_get_property_name(p.ref)
    s = try
        unsafe_string(nref)
    catch e
        # String is NULL
        ""
    end
    return strip(s)
end

#TODO: Handle cases needed by RFC 2445
# See the (old) python bindings
function value(p::Property)
    vref = icalproperty_get_value_as_string(p.ref)
    s = try
        unsafe_string(vref)
    catch e
        # String is NULL
        ""
    end
    strip(s)
end

function parameters(p::Property, kind::UInt32 = ICAL_ANY_PARAMETER)
    numPars = icalproperty_count_parameters(p.ref)
    parDict = Dict{String,String}()
    if numPars == 0
        return parDict
    end

    pint = icalproperty_get_first_parameter(p.ref, kind)

    while pint != C_NULL
        pstr = unsafe_string(icalparameter_as_ical_string(pint))
        if occursin("=", pstr)
            p1, p2 = split(pstr, "=")
            parDict[p1] = p2
        else
            parDict[pstr] = ""
        end

        pint = icalproperty_get_next_parameter(p.ref, kind)
    end
    parDict
end
function parameters(p::Property, kind::String)
    if isempty(kind)
        parameters(p)
    else
        parameters(p, icalparameter_string_to_kind(kind))
    end
end

function Base.get(p::Property, param::String, default::String = "")
    str = icalproperty_get_parameter_as_string(p.ref, uppercase(param))
    if str == C_NULL
        return default
    else
        return unsafe_string(str)
    end
end
function set!(p::Property, param::String, value::String)
    icalproperty_set_parameter_from_string(p.ref, uppercase(param), value)
    get(p, param)
end
function Base.delete!(p::Property, param::String)
    if !isempty(get(p, param))
        icalproperty_remove_parameter_by_name(p.ref, uppercase(param))
    end
    p
end

## Getters for particular structs based on a property
get_rrule(p::Property) = icalproperty_get_rrule(p.ref)
get_dtstart(p::Property) = icalproperty_get_dtstart(p.ref)