local M = {}

M.tokyonight = function ()
  vim.g.tokyonight_style = "storm"
  local _time = os.date "*t"
  if (_time.hour <= 3 or _time.hour >= 18) then
    vim.g.tokyonight_style = "night"
    vim.g.tokyonight_transparent = true
    vim.g.tokyonight_transparent_sidebar = true
  end
  vim.g.tokyonight_sidebars = {
    -- "qf",
    -- "vista_kind",
    "terminal",
    "packer",
    -- "spectre_panel",
    -- "NeogitStatus",
    "help",
  }
  -- vim.g.tokyonight_cterm_colors = false
  vim.g.tokyonight_terminal_colors = true
  vim.g.tokyonight_italic_comments = true
  vim.g.tokyonight_italic_keywords = true
  vim.g.tokyonight_italic_functions = false
  vim.g.tokyonight_italic_variables = false
  vim.g.tokyonight_transparent = lvim.transparent_window
  vim.g.tokyonight_transparent_sidebar = false
  vim.g.tokyonight_hide_inactive_statusline = true
  vim.g.tokyonight_dark_sidebar = true
  vim.g.tokyonight_dark_float = true
  vim.cmd [[ colorscheme tokyonight ]]
end

M.melange = function ()
  vim.cmd [[
    set termguicolors
    colorscheme melange
  ]]
end

M.colors = {
  tokyonight_colors = {
    none = "NONE",
    bg_dark = "#1f2335",
    bg_alt = "#1f2335",
    bg = "#24283b",
    bg_highlight = "#292e42",
    terminal_black = "#414868",
    fg = "#c0caf5",
    fg_dark = "#a9b1d6",
    fg_gutter = "#3b4261",
    dark3 = "#545c7e",
    comment = "#565f89",
    dark5 = "#737aa2",
    blue0 = "#3d59a1",
    blue = "#7aa2f7",
    cyan = "#7dcfff",
    blue1 = "#2ac3de",
    blue2 = "#0db9d7",
    blue5 = "#89ddff",
    blue6 = "#B4F9F8",
    blue7 = "#394b70",
    magenta = "#bb9af7",
    magenta2 = "#ff007c",
    purple = "#9d7cd8",
    orange = "#ff9e64",
    yellow = "#e0af68",
    green = "#9ece6a",
    green1 = "#73daca",
    green2 = "#41a6b5",
    teal = "#1abc9c",
    red = "#f7768e",
    red1 = "#db4b4b",
    git = {
      change = "#6183bb",
      add = "#449dab",
      delete = "#914c54",
      conflict = "#bb7a61"
    },
    gitSigns = {
      add = "#164846",
      change = "#394b70",
      delete = "#823c41"
    },
  },
  melange_colors = {
    none = "NONE",
    bg_dark = "#352F2A",
    bg_alt = "#4D453E",
    bg = "#352F2A",
    bg_highlight = "#4D453E",
    terminal_black = "#2A2520",
    fg = "#ECE1D7",
    fg_dark = "#ECE1D7",
    fg_gutter = "#4D453E",
    dark3 = "#C1A78E",
    comment = "#4D453E",
    dark5 = "#EBC06D",
    blue0 = "#9AACCE",
    blue = "#9AACCE",
    cyan = "#7dcfff",
    blue1 = "#9AACCE",
    blue2 = "#9AACCE",
    blue5 = "#9AACCE",
    blue6 = "#9AACCE",
    blue7 = "#9AACCE",
    magenta = "#CE9BCB",
    magenta2 = "#CE9BCB",
    purple = "#B380B0",
    orange = "#F17C64",
    yellow = "#EBC06D",
    green = "#99D59D",
    green1 = "#99D59D",
    green2 = "#99D59D",
    teal = "#88B3B2",
    red = "#B65C60",
    red1 = "#F17C64",
    git = {
      change = "#CE9BCB",
      add = "#88B3B2",
      delete = "#F17C64",
      conflict = "#C1A78E"
    },
    gitSigns = {
      add = "#99D59D",
      change = "#9AACCE",
      delete = "#B65C60"
    },
  },
}

M.current_colors = function()
  local colors = M.colors.tokyonight_colors
  local _time = os.date "*t"
  if _time.hour >= 3 and _time.hour < 12 then
    colors = M.colors.melange_colors
  elseif _time.hour >= 12 or _time.hour < 3 then
    colors = M.colors.tokyonight_colors
  end
  return colors
end

return M
