__precompile__()
module Libical

@static if VERSION < v"0.7-"
    using Compat: Nothing, occursin
end
using Compat: @compat

const depsfile = joinpath(dirname(dirname(@__FILE__)), "deps", "deps.jl")
if isfile(depsfile)
  include(depsfile)
else
  error("Libical not properly installed. Please run Pkg.build(\"Libical\")")
end

# Low-level interface wrapped from the API
include("libical_types.jl")

include("libical_core.jl")

# High-level interface
include("Property.jl")

include("Component.jl")

end # module
