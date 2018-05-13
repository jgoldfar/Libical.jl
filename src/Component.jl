export Component

mutable struct Component{T}
    ref::T
    function Component(ref::T) where {T<:Ptr}
        if ref == C_NULL || ref == nothing
            error("Components cannot be null.")
        end
        new{T}(ref)
    end
end

function Component(kind::String)
    if !isempty(kind)
        ref = icalcomponent_new(icalcomponent_string_to_kind("VCALENDAR"))
        _kindInd = icalcomponent_string_to_kind(kind)
        innerComponent = icalcomponent_new(_kindInd)

        icalcomponent_add_component(ref, innerComponent)
        c = Component(ref)
        @compat finalizer(cc -> icalcomponent_free(cc.ref), c)
        c
    else
        error("Component may not have unspecified kind.")
    end
end

# Base interfaces a Component satisfies
function Base.read(filename::AbstractString, ::Type{Component})
    calString = read(filename, String)
    calComp = icalparser_parse_string(calString)
    icalerrno = unsafe_load(icalerrno_return())
    if icalerrno != ICAL_NO_ERROR || calComp == C_NULL
        error("Could not read component from $filename")
    end
    Component(calComp)
end
function Base.show(io::IO, c::Component)
    gstr = unsafe_string(icalcomponent_as_ical_string(c.ref))
    if get(io, :compact, false)
        print(io, "Component(\"", gstr, "\")")
    else
        ngstr = length(gstr)
        print(io, "Component(\"", gstr[1:min(11, ngstr)], "...\")")
    end
end
Base.convert(::Type{T}, c::Component{T}) where {T} = c.ref

# Other, ical-specific interfaces
kindof(c::Component) = icalcomponent_isa(c.ref)

kindString(c::Component) = unsafe_string(icalcomponent_kind_to_string(kindof(c)))

function components(c::Component, kind::String = "ANY")
    kindVal = icalcomponent_string_to_kind(kind)
    numComponents = icalcomponent_count_components(c.ref, kindVal)
    compVec = Component{Ptr{icalcomponent}}[]
    if numComponents == 0
        return compVec
    end

    cint = icalcomponent_get_first_component(c.ref, kindVal)

    while cint != C_NULL
        push!(compVec, Component(cint))

        cint = icalcomponent_get_next_component(c.ref, kindVal)
    end
    compVec
end
function inner_component(c::Component)
    innerComp = icalcomponent_get_inner(c.ref)
    if innerComp == C_NULL
        return C_NULL
    else
        return Component(innerComp)
    end
end
function add_component(c::Component, c1::Component)
    if icalcomponent_get_parent(c1.ref) != C_NULL
        error("Child already has a parent.")
    end
    icalcomponent_add_component(c.ref, c1.ref)
end
function remove_component(c::Component, c1::Component)
    icalcomponent_remove_component(c.ref, c1.ref)
end
