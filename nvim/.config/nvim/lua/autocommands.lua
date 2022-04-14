-- Autocommands
-- ========================
vim.cmd [[
  autocmd BufRead,BufNewFile *.jmd set filetype=markdown
  autocmd Filetype markdown set formatoptions+=ro
  autocmd Filetype markdown set comments=b:*,b:-,b:+,b:1.,n:>
  autocmd Filetype markdown set colorcolumn=81
  autocmd Filetype markdown set nofoldenable
  autocmd Filetype markdown set tabstop=4
  autocmd Filetype markdown set softtabstop=4
  autocmd Filetype markdown set shiftwidth=4
]]
