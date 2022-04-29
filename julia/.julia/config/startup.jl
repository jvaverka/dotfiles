using Revise
using OhMyREPL
using InteractiveUtils

ENV["JULIA_EDITOR"] = "lvim"

const STARTUP = joinpath(homedir(), ".julia", "config", "startup.jl")

InteractiveUtils.define_editor(r"lvim", wait = true) do cmd, path, line
    `$cmd +$line $path`
end

rmrf(path::String) = rm(path, force=true, recursive=true)

colorscheme!("OneDark")
println(join(["  ", "  ", "  ", "  ", "  ", "  ", "  ", "  ", "  "], ">>-<<"))
