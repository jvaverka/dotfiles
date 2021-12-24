-- Maps
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
map('n', '<leader>w', ':w<cr>', options)  -- easy save
map('n', '<leader>q', ':q<cr>', options)  -- easy quit
map('n', '<shift>l', ':bnext<cr>', options)  -- buffer nav
map('n', '<shift>h', ':bprev<cr>', options)  -- buffer nav
map('n', '<leader>e', ':NvimTreeToggle<cr>', options) -- file explorer
map('n', '<c-h>', '<c-w><c-h>', options)  -- window nav
map('n', '<c-j>', '<c-w><c-j>', options)  -- window nav
map('n', '<c-k>', '<c-w><c-k>', options)  -- window nav
map('n', '<c-l>', '<c-w><c-l>', options)  -- window nav
map('i', 'jk', '<esc>', options)  -- I hate escape
map('i', 'kj', '<esc>', options)  -- I hate escape
