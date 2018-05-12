using Libical
@static if VERSION >= v"0.7-"
    using Test
else
    using Base.Test
end

@testset "Component" begin
    include("Component.jl")
end