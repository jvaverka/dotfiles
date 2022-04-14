-- Settings
-- ========================
local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- Global
-- ========================
o.hidden = true
vim.cmd [[ set iskeyword+=- ]]
o.swapfile = true
o.spelllang = 'en'
o.spell = true
o.scrolloff = 10
o.dir = '/tmp'
o.smartcase = true
o.laststatus = 2
o.hlsearch = false
o.incsearch = true
o.ignorecase = true
o.scrolloff = 12
o.clipboard = 'unnamedplus'
o.mouse = 'a'
o.splitright = true
o.splitbelow = true
o.shiftwidth = 2
o.tabstop = 2
o.timeoutlen = 350
o.guifont = 'FiraCode NF Retina'

-- Window-Local
-- ========================
wo.number = true
wo.relativenumber = true
wo.wrap = false
wo.cursorline = true

-- Buffer-Local
-- ========================
bo.expandtab = true
