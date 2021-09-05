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
vim.opt.scrolloff = 10
vim.opt.timeoutlen = 100
vim.opt.wrap = false
require("user.python-paths")

-- Neovide
-- =========================================
vim.opt.guifont = "Hasklug Nerd Font:h18"
vim.g.neovide_fullscreen = true -- whether the app should take up the entire screen
vim.g.neovide_cursor_animation_length = 0.13 -- time it takes for the cursor to complete it's animation in seconds
vim.g.neovide_cursor_trail_length = 0.8 -- determines how much the trail of the cursor lags behind the front edge
vim.g.neovide_cursor_antialiasing = true -- enables or disables antialiasing of the cursor quad
vim.g.neovide_cursor_vfx_mode = "railgun" -- railgun | torpedo | pixiedust | sonicboom | ripple | wireframe
vim.g.neovide_cursor_vfx_opacity = 200.0 -- transparency of the generated particles
vim.g.neovide_cursor_vfx_particle_lifetime = 1.2 -- amount of time the generated particles should survive
vim.g.neovide_cursor_vfx_particle_density = 7.0 -- number of generated particles
vim.g.neovide_cursor_vfx_particle_speed = 10.0 -- speed of particle movement
vim.g.neovide_cursor_vfx_particle_phase = 1.5 -- sets ... the phase?
vim.g.neovide_cursor_vfx_particle_curl = 1.0 -- sets the ... I guess curl?  For railgun

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
  notify           = {  active = true  },
  package_info     = {  active = true  },
  persistence      = {  active = true  },
  playground       = {  active = true  },
  pomodoro         = {  active = true  },
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
