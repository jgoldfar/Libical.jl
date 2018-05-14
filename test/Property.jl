using Libical
@static if VERSION >= v"0.7-"
    using Test
else
    using Base.Test
end

@testset "Property Creation" begin
    c1 = Property("X-TESTING")

    @test Libical.name(c1) == "X-TESTING"

    params = @inferred Libical.parameters(c1)

    nparams = length(params)
    @test nparams == 0

    Libical.set!(c1, "X-TESTED", "100")

    #@show Libical.parameters(c1)

    @test length(Libical.parameters(c1)) == nparams + 1
    @test get(c1, "X-TESTED") == "100"
    delete!(c1, "X-TESTED")

    @test length(Libical.parameters(c1)) == nparams
    @test Libical.name(c1) == "X-TESTING"
end

testDataDir = joinpath(dirname(@__DIR__), "deps", "src", "libical-3.0", "test-data")

is_calfile(f) = last(splitext(f)) == ".ics"

testDataCalfiles = filter(is_calfile, readdir(testDataDir))

skipParsing = ["crash.ics", "malloc.ics", "zday.ics", # Have embedded NUL
               "get_char_test.ics",
               "issue250.ics", "issue251.ics", "issue252.ics", "issue253.ics"]

@testset "Property Routines" begin
    @testset "test Data f=$f" for f in setdiff(testDataCalfiles, skipParsing)
        try
            comp = read(joinpath(testDataDir, f), Component)
            compProps = Libical.properties(comp)

            if !isempty(compProps)
                firstProp = first(compProps)
                @test typeof(Libical.name(firstProp)) <: String
                @test typeof(Libical.value(firstProp)) <: String

                @show firstProp
                @test true # Print methods work

            end
        end
    end
end
