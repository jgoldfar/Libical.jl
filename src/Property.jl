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