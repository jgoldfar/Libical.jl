using BinDeps
using Compat

@BinDeps.setup

const libical = library_dependency("libical", aliases=["libical"])

provides(Sources,
         URI("https://github.com/libical/libical/archive/3.0.zip"),
         libical,
         unpacked_dir = "libical-3.0")

const prefix = joinpath(BinDeps.depsdir(libical), "usr")
const srcdir = joinpath(BinDeps.depsdir(libical), "src", "libical-3.0")
const builddir = joinpath(srcdir, "build")

provides(SimpleBuild, (@build_steps begin
                         GetSources(libical)
                         CreateDirectory(builddir)
                         @build_steps begin
                           ChangeDirectory(builddir)
                           `cmake -D CMAKE_INSTALL_PREFIX=$(prefix) ..`
                           `make`
                           `make install`
                         end
                       end),
         libical,
         os = :Unix)

@BinDeps.install @compat Dict(:libical => :libical)