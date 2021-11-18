using OhMyREPL
using InteractiveUtils

colorscheme!("OneDark")

ENV["JULIA_EDITOR"] = "lvim"

InteractiveUtils.define_editor(
    r"lvim", wait=true) do cmd, path, line
    `$cmd +$line $path`
end

println("               ❤                  ")
