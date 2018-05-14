using Libical
@static if VERSION >= v"0.7-"
    using Test
else
    using Base.Test
end

@testset "Property" begin
    include("Property.jl")
end

@testset "Component" begin
    include("Component.jl")
end
