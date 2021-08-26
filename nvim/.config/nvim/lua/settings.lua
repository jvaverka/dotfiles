local o = vim.o
local wo = vim.wo
local bo = vim.bo

-- global options
o.swapfile = true
o.dir = '/tmp'
o.smartcase = true
o.laststatus = 2
o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.scrolloff = 12
o.clipboard = 'unnamedplus'
o.splitright = true
o.splitbelow = true
o.shiftwidth = 2
o.tabstop = 2
o.timeoutlen = 100

-- window-local options
wo.number = true
wo.relativenumber = true
wo.wrap = false

-- buffer-local options
bo.expandtab = true