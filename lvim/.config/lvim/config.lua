-- general
lvim.format_on_save = true
lvim.lint_on_save = true
lvim.colorscheme = "tokyonight"
-- python
vim.cmd [[ let g:python3_host_prog = '/home/jake/opt/anaconda3/envs/neovim/bin/python3.9' ]]
vim.cmd [[ let g:python_host_prog = '/home/jake/opt/anaconda3/envs/mypy2/bin/python2.7' ]]
-- julia
vim.cmd [[ let g:julia_spellcheck_docstrings = 1 ]]
vim.cmd [[ let g:julia_spellcheck_strings = 1 ]]
vim.cmd [[ let g:julia_spellcheck_comments = 1 ]]
vim.cmd [[ let g:julia_highlight_operators = 1 ]]
vim.cmd [[ let g:julia_indent_align_import = 1 ]]
vim.cmd [[ let g:julia_indent_align_brackets = 1 ]]
vim.cmd [[ let g:julia_indent_align_funcargs = 1 ]]

-- vim options
vim.opt.relativenumber = true
vim.opt.hlsearch = false

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
lvim.keys.normal_mode["Y"] = "y$"       -- yank to end of line
lvim.keys.normal_mode["n"] = "nzzzv"    -- keep cursor centered
lvim.keys.normal_mode["N"] = "Nzzzv"    -- keep cursor centered
lvim.keys.normal_mode["J"] = "mzJ`z"    -- keep cursor centered
lvim.keys.insert_mode[","] = ",<c-g>u"  -- undo break points
lvim.keys.insert_mode["."] = ".<c-g>u"  -- undo break points
lvim.keys.insert_mode["!"] = "!<c-g>u"  -- undo break points
lvim.keys.insert_mode["?"] = "?<c-g>u"  -- undo break points

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
lvim.builtin.telescope.on_config_done = function()
  local actions = require "telescope.actions"
  -- for input mode
  lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next
  lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
  lvim.builtin.telescope.defaults.mappings.i["<C-n>"] = actions.cycle_history_next
  lvim.builtin.telescope.defaults.mappings.i["<C-p>"] = actions.cycle_history_prev
  -- for normal mode
  lvim.builtin.telescope.defaults.mappings.n["<C-j>"] = actions.move_selection_next
  lvim.builtin.telescope.defaults.mappings.n["<C-k>"] = actions.move_selection_previous
end

-- Use which-key to add extra bindings with the leader-key prefix
lvim.builtin.which_key.mappings["t"] = {
  name = "+Trouble",
  r = { "<cmd>Trouble lsp_references<cr>", "References" },
  f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
  d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnosticss" },
  q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
  l = { "<cmd>Trouble loclist<cr>", "LocationList" },
  w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnosticss" },
}
lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
lvim.builtin.which_key.mappings["Q"]= {
  name = "+Quit",
  s = { "<cmd>lua require('persistence').load()<cr>", "Restore for current dir" },
  l = { "<cmd>lua require('persistence').load(last=true)<cr>", "Restore last session" },
  d = { "<cmd>lua require('persistence').stop()<cr>", "Quit without saving session" },
}
lvim.builtin.which_key.mappings[">"] = { "<cmd>ToggleTerm<CR>", "Terminal" }
lvim.builtin.terminal.execs[#lvim.builtin.terminal.execs+1] = {"nb -i", "n", "Notebook"}

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {}
lvim.builtin.treesitter.ignore_install = {}
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings
-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end
-- you can overwrite the null_ls setup table (useful for setting the root_dir function)
-- lvim.lsp.null_ls.setup = {
--   root_dir = require("lspconfig").util.root_pattern("Makefile", ".git", "node_modules"),
-- }
-- or if you need something more advanced
-- lvim.lsp.null_ls.setup.root_dir = function(fname)
--   if vim.bo.filetype == "javascript" then
--     return require("lspconfig/util").root_pattern("Makefile", ".git", "node_modules")(fname)
--       or require("lspconfig/util").path.dirname(fname)
--   elseif vim.bo.filetype == "php" then
--     return require("lspconfig/util").root_pattern("Makefile", ".git", "composer.json")(fname) or vim.fn.getcwd()
--   else
--     return require("lspconfig/util").root_pattern("Makefile", ".git")(fname) or require("lspconfig/util").path.dirname(fname)
--   end
-- end

-- set a formatter if you want to override the default lsp one (if it exists)
lvim.lang.javascript.formatters = { { exe = "eslint"}, { exe = "prettier" } }  -- exe value can be "prettier", "prettierd", "eslint", or "eslint_d"
lvim.lang.javascriptreact.formatters = lvim.lang.javascript.formatters
lvim.lang.javascript.linters = { { exe = "eslint" } }  -- exe value can be "eslint" or "eslint_d"
lvim.lang.javascriptreact.linters = lvim.lang.javascript.linters
lvim.lang.typescript.formatters = lvim.lang.javascript.formatters
lvim.lang.typescriptreact.formatters = lvim.lang.typescript.formatters
lvim.lang.typescript.linters = lvim.lang.javascript.linters
lvim.lang.typescriptreact.linters = lvim.lang.typescript.linters
lvim.lang.vue.formatters = { { exe = "eslint"}, { exe = "prettier" } }
lvim.lang.vue.linters = { { exe = "eslint" } }
lvim.lang.json.formatters = { { exe = "prettier" } }  -- json_tool│prettier│prettierd
lvim.lang.python.formatters = { { exe = "black", args = {} } }
lvim.lang.python.linters = { { exe = "flake8", args = {} } }

-- Additional Plugins
lvim.plugins = {
  {"folke/tokyonight.nvim"},
  {"ChristianChiarulli/nvcode-color-schemes.vim"},
  {"rafamadriz/neon"},
  {
    "ray-x/lsp_signature.nvim",
    config = function() require"lsp_signature".on_attach() end,
    event = "InsertEnter"
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "ggandor/lightspeed.nvim",
    event = "BufRead",
  },
  {
    "nvim-treesitter/playground",
    event = "BufRead",
  },
  -- {
  --   "metakirby5/codi.vim",
  --   cmd = "Codi",
  -- },
  {
    "folke/persistence.nvim",
    event = "VimEnter",
    module = "persistence",
    config = function()
      require("persistence").setup {
        dir = vim.fn.expand(vim.fn.stdpath "config" .. "/session/"),
        options = { "buffers", "curdir", "tabpages", "winsize" },
      }
    end,
  },
  {"JuliaEditorSupport/julia-vim"}
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
lvim.autocommands.custom_groups = {
  -- Markdown
  { "filetype", "markdown", "set formatoptions+=ro" },
  { "filetype", "markdown", "set comments=b:*,b:-,b:+,b:1.,n:>" },
  { "filetype", "markdown", "set colorcolumn=81" },
  { "filetype", "markdown", "set nofoldenable" },
  -- Julia Markdown
  { "BufRead,BufNewFile", "*.jmd", "set filetype=markdown" },
  -- R Markdown
  { "BufRead,BufNewFile", "*.rmd", "set filetype=rmarkdown" },
  { "filetype", "rmarkdown", "set nofoldenable" },
  -- Calcurse
  { "BufRead,BufNewFile", "~/.calcurse/notes/*", "set filetype=markdown" },
}
