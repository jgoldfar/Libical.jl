using Libical
@static if VERSION < v"0.7.0-DEV.2005"
    using Base.Test
else
    using Test
end

@testset "Property" begin
    include("Property.jl")
end

@testset "Component" begin
    include("Component.jl")
end
