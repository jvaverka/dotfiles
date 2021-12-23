-- Settings
-- ========================
local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- Global
-- ========================
o.swapfile = true
o.dir = '/tmp'
o.smartcase = true
o.laststatus = 2
o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.scrolloff = 12
o.clipboard = 'unnamedplus'
o.mouse = 'a'
o.splitright = true
o.splitbelow = true
o.shiftwidth = 2
o.tabstop = 2
o.timeoutlen = 250

-- Window-Local
-- ========================
wo.number = true
wo.relativenumber = true
wo.wrap = false

-- Buffer-Local
-- ========================
bo.expandtab = true
