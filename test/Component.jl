using Libical
@static if VERSION >= v"0.7-"
    using Test
else
    using Base.Test
end

@testset "Component Creation" begin
    c1 = Component("VEVENT")

    @test Libical.kindString(c1) == "VCALENDAR" # All events are wrapped in a calendar when created anew.
end

testDataDir = joinpath(dirname(@__DIR__), "deps", "src", "libical-3.0", "test-data")

is_calfile(f) = last(splitext(f)) == ".ics"

testDataCalfiles = filter(is_calfile, readdir(testDataDir))

skipParsing = ["crash.ics", "malloc.ics", "zday.ics", # Have embedded NUL
               "get_char_test.ics",
               "issue250.ics", "issue251.ics", "issue252.ics", "issue253.ics"]

@testset "ComponentParser" begin
    @testset "test Data f=$f" for f in setdiff(testDataCalfiles, skipParsing)

        calString = read(joinpath(testDataDir, f), String)
        calComp = Libical.icalparser_parse_string(calString)
        icalerrno = unsafe_load(Libical.icalerrno_return())

        kind = Libical.icalcomponent_isa(calComp)
        if kind == 0
            continue
        end
        kindStr = unsafe_string(Libical.icalcomponent_kind_to_string(kind))

        Libical.icalcomponent_free(calComp)
        @test true

        comp2 = read(joinpath(testDataDir, f), Component)
        @test true

        kind2 = Libical.kindof(comp2)
        kindStr2 = Libical.kindString(comp2)
        @test kindStr2 == kindStr
    end
end
