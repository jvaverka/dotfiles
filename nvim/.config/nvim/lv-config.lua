-- general
O.format_on_save = true
O.completion.autocomplete = true
O.colorscheme = "spacegray"
O.auto_close_tree = 0
O.default_options.wrap = true
O.default_options.timeoutlen = 100
O.leader_key = " "

-- TODO: User Config for predefined plugins
O.plugin.dashboard.active = true
O.plugin.floatterm.active = true
O.plugin.zen.active = true
O.plugin.zen.window.height = 0.90

O.treesitter.ensure_installed = "maintained"
O.treesitter.ignore_install = {}
O.treesitter.highlight.enabled = true

-- python
O.lang.python.isort = true
O.lang.python.diagnostics.virtual_text = true
O.lang.python.analysis.use_library_code_types = true
O.lang.python.formatter.exe = "black"
O.lang.python.formatter.args = { "-" }
vim.cmd [[ let g:python3_host_prog = '/home/jake/opt/anaconda3/envs/neovim/bin/python3.9' ]]
vim.cmd [[ let g:python_host_prog = '/home/jake/opt/anaconda3/envs/mypy2/bin/python2.7' ]]

-- go
-- to change default formatter from gofmt to goimports
-- O.lang.formatter.go.exe = "goimports"

-- javascript
O.lang.tsserver.linter = "prettier"

-- rust
-- O.lang.rust.formatter = {
--   exe = "rustfmt",
--   args = {"--emit=stdout", "--edition=2018"},
-- }

-- latex
O.lang.latex.auto_save = false
O.lang.latex.ignore_errors = {}

-- mine
O.default_options.relativenumber = true

-- Additional Plugins
O.user_plugins = {
  -- cool function signature info
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   config = function()
  --     require("lsp_signature").on_attach()
  --   end,
  --   event = "InsertEnter",
  -- },
  -- markdown
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && yarn install",
    cmd = "MarkdownPreview",
    ft = "markdown",
  },
  -- Julia Editor Support
  { "JuliaEditorSupport/julia-vim" },
  -- Rmarkdown
  -- { "vim-pandoc/vim-pandoc", },
  -- { "vim-pandoc/vim-pandoc-syntax", },
  -- {
  --   "vim-pandoc/vim-rmarkdown",
  --     run = 'cd app && yarn install',
  --     cmd = 'MarkdownPreview',
  --     ft = "rmarkdown"
  -- },
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
O.user_autocommands = {
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

-- Additional Leader bindings for WhichKey
O.user_which_key = {
  d = {
    name = "+Dictionary",
    a = { "zg", "add to dict" },
    c = { "z=", "corrections" },
    d = { "<cmd>:set spell!<cr>", "toggle spell" },
    f = { "1z=", "1st fix" },
    n = { "]s", "next" },
    p = { "[s", "prev" },
  },
}
