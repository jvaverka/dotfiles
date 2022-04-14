-- Neovim
-- ========================
require 'settings'
require 'keys'
require 'plugins'
require 'lsp'
require 'autocommands'

-- Vim Options
-- ========================
vim.cmd [[
	set nocompatible
	syntax enable
]]

-- Python Paths
-- ========================
vim.g.python_host_prog = '$HOMEPATH\\miniconda3\\envs\\mypy2\\python.exe'
vim.g.python3_host_prog = '$HOMEPATH\\miniconda3\\envs\\neovim\\python.exe'
