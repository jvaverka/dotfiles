local M = {}

M.config = function ()

  -- Dashboard
  -- =========================================
  lvim.builtin.alpha.active = true
  lvim.builtin.alpha.dashboard.section.buttons["m"] = {
    description = { "  Marks              " },
    command = "Telescope marks",
  }
  -- lvim.builtin.alpha.dashboard.config.sessions. = vim.loop.os_homedir() .. "/.cache/lvim/sessions/"

  -- NvimTree
  -- =========================================
  -- lvim.builtin.nvimtree.auto_open = 0
  -- lvim.builtin.nvimtree.hide_dotfiles = 1
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
    "<A-c>",
    "Calcurse"
  }
  lvim.builtin.terminal.execs[#lvim.builtin.terminal.execs+1] = {
    "nb shell",
    "<A-n>",
    "Notebook"
  }
  lvim.builtin.terminal.execs[#lvim.builtin.terminal.execs+1] = {
    "julia --project -e \"using Pkg; Pkg.test()\"; sleep 5",
    "<A-j>",
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

  -- Snippets
  -- =========================================
  require("luasnip/loaders/from_vscode").load { paths = { "~/.config/lvim/snippets" } }
end

return M
