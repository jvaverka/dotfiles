-- Keys
-- ========================
local map = vim.api.nvim_set_keymap

-- Leader
-- ========================
map('n', '<space>', '<nop>', {noremap = true, silent = true})
vim.g.mapleader = ' '

-- Options
-- ========================
options = { noremap = true }

-- Bindings
-- ========================
map('n', '<s-l>', ':bnext<cr>', options)  -- buffer nav
map('n', '<s-h>', ':bprev<cr>', options)  -- buffer nav
map('n', '<c-h>', '<c-w><c-h>', options)  -- window nav
map('n', '<c-j>', '<c-w><c-j>', options)  -- window nav
map('n', '<c-k>', '<c-w><c-k>', options)  -- window nav
map('n', '<c-l>', '<c-w><c-l>', options)  -- window nav
map('i', 'jk', '<esc>', options)  -- I hate escape
map('i', 'kj', '<esc>', options)  -- I hate escape
map('n', '<m-j>', ':resize -2<cr>', options)           -- resize windows
map('n', '<m-k>', ':resize +2<cr>', options)           -- resize windows
map('n', '<m-h>', ':vertical resize +2<cr>', options)  -- resize windows
map('n', '<m-l>', ':vertical resize -2<cr>', options)  -- resize windows
map('n', '<m-U>', 'viwU', options)  -- easy CAPS
map('n', '<m-u>', 'viwu', options)  -- easy CAPS
map('n', 'gv', ':vs<cr>', options)  -- fast vertical split
map('v', '<', '<gv', options)  -- better tabbing
map('v', '>', '>gv', options)  -- better tabbing
map('c', 'w!!', 'w !sudo tee %', options)  -- can't stop me
