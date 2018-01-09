VERSION >= v"0.4.0-dev+6521" && __precompile__() 
module Libical

const depsfile = joinpath(dirname(dirname(@__FILE__)), "deps", "deps.jl")
if isfile(depsfile)
  include(depsfile)
else
  error("Libical not properly installed. Please run Pkg.build(\"Libical\")")
end

using Compat

include("libical_types.jl")
include("libical_core.jl")

end # module
