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

function components(c::Component, kind::UInt32 = ICAL_ANY_COMPONENT)
    numComponents = icalcomponent_count_components(c.ref, kind)
    compVec = typeof(c)[]
    if numComponents == 0
        return compVec
    end

    cint = icalcomponent_get_first_component(c.ref, kind)

    while cint != C_NULL
        push!(compVec, Component(cint))

        cint = icalcomponent_get_next_component(c.ref, kind)
    end
    compVec
end
function components(c::Component, kind::String)
    if isempty(kind)
        components(c)
    else
        components(c, icalcomponent_string_to_kind(kind))
    end
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

_prop_from_ref(c::Component, p::Property) = _prop_from_ref(c::Component, p.ref)

function _prop_from_ref(c::Component, p)
    if p == C_NULL
        return nothing
    end
    propValue = icalproperty_get_value_as_string(p)
    propName = icalproperty_get_property_name(p)

    propKind = icalproperty_string_to_kind(propName)
    propKindValue = icalproperty_kind_to_value_kind(propKind)

    propValueType = icalvalue_kind_to_string(propKindValue)
    propRef = p
    if (propKindValue == "DATE-TIME" )|| propKindValue == "DATE"
        prop = Time(p)
    elseif propKindValue == "PERIOD"
        prop = Period(p)
    elseif propKindValue == "DURATION"
        prop = Duration(p)
    elseif propName == "ATTACH"
        prop = Attach(p)
    elseif propName == "ATTENDEE"
        prop = Addendee(p)
    elseif propName == "ORGANIZER"
        prop = Organizer(p)
    else
        prop = Property(p)
    end
    prop
end

function properties(c::Component, kind::UInt32 = ICAL_ANY_PROPERTY)
    numProps = icalcomponent_count_properties(c.ref, kind)
    propVec = Property{Ptr{icalproperty}}[]
    if numProps == 0
        return propVec
    end

    pint = icalcomponent_get_first_property(c.ref, kind)

    while pint != C_NULL
        push!(propVec, Property(pint))

        pint = icalcomponent_get_next_property(c.ref, kind)
    end
    propVec
end
function properties(c::Component, kind::String)
    if isempty(kind)
        properties(c)
    else
        properties(c, icalproperty_string_to_kind(kind))
    end
end
