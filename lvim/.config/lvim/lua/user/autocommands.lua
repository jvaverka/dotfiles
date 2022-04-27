local M = {}

M.config = function ()
  -- Autocommands (https://neovim.io/doc/user/autocmd.html)
  lvim.autocommands.custom_groups = {
    -- Lua
    { "FileType", "lua", "set tabstop=2" },
    { "FileType", "lua", "set softtabstop=2" },
    { "FileType", "lua", "set shiftwidth=2" },
    -- Calcurse
    { "BufRead,BufNewFile", "~/.calcurse/notes/*", "set filetype=markdown" },
    -- Julia
    { "FileType", "julia", "nmap <buffer> ? <Plug>(JuliaDocPrompt)" },
    -- Julia Markdown
    { "BufRead,BufNewFile", "*.jmd", "set filetype=markdown" },
    -- Markdown
    { "FileType", "markdown", "set formatoptions+=ro" },
    { "FileType", "markdown", "set comments=b:*,b:-,b:+,b:1.,n:>" },
    { "FileType", "markdown", "set colorcolumn=81" },
    { "FileType", "markdown", "set nofoldenable" },
    { "FileType", "markdown", "set tabstop=2" },
    { "FileType", "markdown", "set softtabstop=2" },
    { "FileType", "markdown", "set shiftwidth=2" },
    -- R Markdown
    { "BufRead,BufNewFile", "*.rmd", "set filetype=rmarkdown" },
    { "FileType", "rmarkdown", "set nofoldenable" },
  }
end

return M
