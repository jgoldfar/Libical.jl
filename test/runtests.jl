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
const downloadDir = joinpath(@__DIR__, "..", "deps")
const downloadPath = joinpath(downloadDir, testFileName)
if !isfile(downloadPath)
    download(testData, downloadPath)
end

if !isdir(joinpath(downloadDir, "src"))
    #TODO: Switch on platform/availability of tar command
    @static if Sys.isunix()
        run(Cmd(`tar xvzf $(downloadPath)`, dir=downloadDir))
    else
        const exe7z = joinpath(Sys.BINDIR, "7z.exe")
        run(pipeline(
            Cmd(`$exe7z x $(downloadPath) -y -so`, dir=downloadDir),
            Cmd(`$exe7z x -si -y -ttar -o$(dirname(downloadPath))`, dir=downloadDir)
            )
        )
    end
end

@testset "Property" begin
    include("Property.jl")
end

@testset "Component" begin
    include("Component.jl")
end
