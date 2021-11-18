local M = {}

M.config = function ()
  -- Autocommands (https://neovim.io/doc/user/autocmd.html)
  lvim.autocommands.custom_groups = {
    -- Calcurse
    { "BufRead,BufNewFile", "~/.calcurse/notes/*", "set filetype=markdown" },
    -- Julia
    { "FileType", "julia", "nmap <buffer> ? <Plug>(JuliaDocPrompt)" },
    -- Julia Markdown
    { "BufRead,BufNewFile", "*.jmd", "set filetype=markdown" },
    -- Markdown
    { "filetype", "markdown", "set formatoptions+=ro" },
    { "filetype", "markdown", "set comments=b:*,b:-,b:+,b:1.,n:>" },
    { "filetype", "markdown", "set colorcolumn=81" },
    { "filetype", "markdown", "set nofoldenable" },
    -- R Markdown
    { "BufRead,BufNewFile", "*.rmd", "set filetype=rmarkdown" },
    { "filetype", "rmarkdown", "set nofoldenable" },
  }
end

return M
