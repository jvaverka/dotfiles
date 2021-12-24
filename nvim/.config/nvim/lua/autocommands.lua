-- Autocommands
-- ========================
vim.cmd [[ autocmd BufRead,BufNewFile *.jmd set filetype=markdown ]]
vim.cmd [[ autocmd Filetype markdown set formatoptions+=ro ]]
vim.cmd [[ autocmd Filetype markdown set comments=b:*,b:-,b:+,b:1.,n:> ]]
vim.cmd [[ autocmd Filetype markdown set colorcolumn=81 ]]
vim.cmd [[ autocmd Filetype markdown set nofoldenable ]]
vim.cmd [[ autocmd Filetype markdown set tabstop=4 ]]
vim.cmd [[ autocmd Filetype markdown set softtabstop=4 ]]
vim.cmd [[ autocmd Filetype markdown set shiftwidth=4 ]]
