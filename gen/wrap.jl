# This file is not an active part of the package. This is the code
# that uses the Clang.jl package to wrap Libical using the headers.

# Note: Using an unmodified version of Clang.jl does not (as of 
# 1/9/2018, attempting to wrap libical v3.0) work; the parser
# chokes on the visibility attribute `GCC visibility push(default)`
# Modifying wrap_c by allowing it to pass by errors in outputting
# enums avoids this issue.

# Find all headers
# To run the script from Julia console:
# include(joinpath(Pkg.dir("Libical"), "src", "wrap.jl"));
const llvmpath = "/usr/local/Cellar/llvm/5.0.0"
push!(Libdl.DL_LOAD_PATH, joinpath(llvmpath, "lib"))
using Clang.wrap_c
const wdir = dirname(@__FILE__)
const pkgbasedir = joinpath(wdir, "..")

# `outpath` specifies, where the julian wrappers would be generated.
# If the generated .jl files are ok, they have to be copied to the "src" folder
# overwriting the old ones
const outpath = joinpath(pkgbasedir, "new")
rm(outpath, recursive = true, force = true)
mkpath(outpath)

const incpath = joinpath(pkgbasedir, "deps", "usr", "include", "libical")
if !isdir(incpath)
  error("Run Pkg.build(\"Libical\") before trying to wrap C headers.")
end

info("Scanning Libical headers in $incpath...")
const Libical_header_files = ["ical"]
const Libical_headers =[joinpath(incpath, y) for y in (string(x, ".h") for x in Libical_header_files)]

const clang_path = joinpath(llvmpath, "lib", "clang", "5.0.0") # change to your clang location
const includes = [
    joinpath(clang_path, "include"),
    incpath
]

function find_outfile(s)
    joinpath(outpath, string(first(splitext(basename(s))), ".jl"))
end
find_libfile(s) = "libical"

const context = wrap_c.init(
    headers = Libical_headers,
    common_file = joinpath(outpath, "libical_types.jl"),
    clang_args = [
        "-D", "__STDC_LIMIT_MACROS",
        "-D", "__STDC_CONSTANT_MACROS",
        # "-v"
    ],
    # clang_diagnostics = true,
    header_library = find_libfile,
    header_outputfile = find_outfile,
    clang_includes = includes,
)

info("Generating .jl wrappers for Libical in $outpath...")
run(context)
info("Done generating .jl wrappers for Libical in $outpath")
