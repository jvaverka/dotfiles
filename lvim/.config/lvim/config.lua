-- LunarVim
-- =========================================
lvim.leader = "space"
lvim.colorscheme = "onedarker"
lvim.format_on_save = false
lvim.lint_on_save = false
lvim.transparent_window = false
local _time = os.date "*t"
if _time.hour < 6 then
  lvim.transparent_window = true
end

-- Vim
-- =========================================
vim.opt.hlsearch = false
vim.opt.relativenumber = true
vim.opt.timeoutlen = 100
vim.opt.wrap = false
require("user.python-paths")

-- Language
-- =========================================
lvim.lsp.diagnostics.virtual_text = false
require("user.json-schemas").setup()

-- Extras
-- =========================================
lvim.extras = {
  bqf              = {  active = false },
  codi             = {  active = false },
  colorizer        = {  active = true  },
  dial             = {  active = true  },
  fancy_lualine    = {  active = true  },
  fancy_theme      = {  active = true  },
  gps              = {  active = true  },
  hop              = {  active = true  },
  julia_vim        = {  active = true  },
  lastplace        = {  active = true  },
  lsp_signature    = {  active = true  },
  markdown_preview = {  active = true  },
  matchup          = {  active = true  },
  neoscroll        = {  active = true  },
  notify           = {  active = false },
  package_info     = {  active = true  },
  persistence      = {  active = true  },
  playground       = {  active = true  },
  quick_scope      = {  active = true  },
  spectre          = {  active = true  },
  symbols_outline  = {  active = true  },
  todo_comments    = {  active = true  },
  trouble          = {  active = true  },
  twilight         = {  active = true  },
  zen_mode         = {  active = true  },
}

-- Builtin Plugins
-- =========================================
require("user.builtins").config()

-- StatusLine
-- =========================================
if lvim.extras.fancy_lualine.active and
   lvim.extras.fancy_theme.active then
  require("user.lualine").config()
end

-- Additional Plugins
-- =========================================
require("user.plugins").config()

-- Autocommands
-- =========================================
require("user.autocommands").config()

-- Additional keybindings
-- =========================================
require("user.keybindings").config()
