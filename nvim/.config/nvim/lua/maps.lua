local map = vim.api.nvim_set_keymap

-- map the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' '  -- 'vim.g' sets global variables

-- map options
options = { noremap = true }
-- easier save & quit
map('n', '<leader>w', ':w<cr>', options)
map('n', '<leader>q', ':q<cr>', options)
-- buffer navigation
map('n', '<leader>n', ':bnext<cr>', options)
map('n', '<leader>p', ':bprev<cr>', options)
-- file exporing
map('n', '<leader>e', ':Vex 30<cr>', options)
-- window navigation
map('n', '<c-h>', '<c-w><c-h>', options)
map('n', '<c-j>', '<c-w><c-j>', options)
map('n', '<c-k>', '<c-w><c-k>', options)
map('n', '<c-l>', '<c-w><c-l>', options)
