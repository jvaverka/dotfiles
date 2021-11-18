local M = {}

M.config = function ()

  -- Dashboard
  -- =========================================
  lvim.builtin.dashboard.active = true
  lvim.builtin.dashboard.custom_section["m"] = {
    description = { "  Marks              " },
    command = "Telescope marks",
  }
  lvim.builtin.dashboard.session_directory = vim.loop.os_homedir() .. "/.cache/lvim/sessions/"

  -- LspInstall
  -- =========================================
  lvim.lang.markdown = {
    formatters = { { exe = "prettier" } },
    linters = { { exe = "markdownlint" } },
  }
  -- lvim.builtin.lspinstall.on_config_done = function()
  --   lvim.lang.tailwindcss.lsp.setup.filetypes = { "markdown" }
  --   lvim.lang.tailwindcss.lsp.active = true
  --   require("lsp").setup "tailwindcss"
  -- end

  -- NvimTree
  -- =========================================
  -- lvim.builtin.nvimtree.auto_open = 0
  lvim.builtin.nvimtree.hide_dotfiles = 1
  lvim.builtin.nvimtree.side = "left"
  lvim.builtin.nvimtree.show_icons.git = 0

  -- Telescope
  -- =========================================
  lvim.builtin.telescope.on_config_done = function()
    local actions = require "telescope.actions"
    lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next
    lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
    lvim.builtin.telescope.defaults.mappings.i["<C-n>"] = actions.cycle_history_next
    lvim.builtin.telescope.defaults.mappings.i["<C-p>"] = actions.cycle_history_prev
    lvim.builtin.telescope.defaults.mappings.n["<C-j>"] = actions.move_selection_next
    lvim.builtin.telescope.defaults.mappings.n["<C-k>"] = actions.move_selection_previous
  end

  -- Terminal
  -- =========================================
  lvim.builtin.terminal.active = true
  lvim.builtin.terminal.execs[#lvim.builtin.terminal.execs+1] = {
    "calcurse",
    "C",
    "Calcurse"
  }
  lvim.builtin.terminal.execs[#lvim.builtin.terminal.execs+1] = {
    "nb -i",
    "n",
    "Notebook"
  }
  lvim.builtin.terminal.execs[#lvim.builtin.terminal.execs+1] = {
    "julia --project -e \"using Pkg; Pkg.test()\"; sleep 5",
    "ju",
    "Unittest"
  }

  -- TreeSitter
  -- =========================================
  lvim.builtin.treesitter.ensure_installed = "maintained"
  lvim.builtin.treesitter.context_commentstring.enable = true
  lvim.builtin.treesitter.ignore_install = {}
  lvim.builtin.treesitter.indent = { enable = true, disable = {} }
  lvim.builtin.treesitter.highlight.enabled = true
  lvim.builtin.treesitter.matchup.enable = true
  lvim.builtin.treesitter.playground.enable = true
end

return M
