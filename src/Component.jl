export Component

mutable struct Component{T}
    ref::T

    function Component(ref::T = nothing) where {T}
        if ref != nothing
            return new{T}(ref)
        else
            error("Component cannot be created from null reference.")
        end
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
function Base.read(filename::AbstractString, ::Type{Component})
    calString = read(filename, String)
    calComp = icalparser_parse_string(calString)
    icalerrno = unsafe_load(icalerrno_return())
    if icalerrno != ICAL_NO_ERROR || calComp == C_NULL
        error("Could not read component from $filename")
    end
    Component(calComp)
end

kindof(c::Component) = icalcomponent_isa(c.ref)

kindString(c::Component) = unsafe_string(icalcomponent_kind_to_string(kindof(c)))
