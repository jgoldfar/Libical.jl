using Libical
@static if VERSION < v"0.7.0-DEV.2005"
    using Base.Test
    using Compat
    const Sys = Compat.Sys
else
    using Test
end

const testFileName = "libical-test-data.tar.gz"
const testData = joinpath("https://dl.bintray.com/jgoldfar/Libical-test-data", testFileName)
const downloadPath = joinpath(@__DIR__, "..", "deps", testFileName)
if !isfile(downloadPath)
    download(testData, downloadPath)
end

if !isdir(joinpath(dirname(downloadPath), "src"))
    #TODO: Switch on platform/availability of tar command
    @static if Sys.isunix()
        run(Cmd(`tar xvzf $(downloadPath)`, dir=dirname(downloadPath)))
    else
        error("I don't know how to install test data on this platform.")
    end
end

@testset "Property" begin
    include("Property.jl")
end

@testset "Component" begin
    include("Component.jl")
end
