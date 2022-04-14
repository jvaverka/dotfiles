local M = {}

M.tokyonight = function ()
  vim.g.tokyonight_style = "storm"
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
  vim.g.tokyonight_italic_comments = false
  vim.g.tokyonight_italic_keywords = false
  vim.g.tokyonight_italic_functions = false
  vim.g.tokyonight_italic_variables = false
  vim.g.tokyonight_transparent = false
  vim.g.tokyonight_transparent_sidebar = false
  vim.g.tokyonight_hide_inactive_statusline = true
  vim.g.tokyonight_dark_sidebar = true
  vim.g.tokyonight_dark_float = true
  local _time = os.date "*t"
  if _time.hour >= 18 then
    vim.g.tokyonight_style = "night"
    vim.g.tokyonight_transparent = false
    vim.g.tokyonight_transparent_sidebar = true
  end
end

M.melange = function ()
	vim.opt.termguicolors = true
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
    bg_dark = "#2A2520",
    bg_alt = "#2A2520",
    bg = "#352F2A",
    bg_highlight = "#4D453E",
    terminal_black = "#C1A78E",
    fg = "#ECE1D7",
    fg_dark = "#C1A78E",
    fg_gutter = "#C1A78E",
    dark3 = "#A38D78",
    comment = "#A38D78",
    dark5 = "#EBC06D",
    blue0 = "#9AACCE",
    blue = "#9AACCE",
    cyan = "#86A3A3",
    blue1 = "#9AACCE",
    blue2 = "#9AACCE",
    blue5 = "#86A3A3",
    blue6 = "#86A3A3",
    blue7 = "#86A3A3",
    magenta = "#B380B0",
    magenta2 = "#CE9BCB",
    purple = "#B380B0",
    orange = "#F17C64",
    yellow = "#EBC06D",
    green = "#78997A",
    green1 = "#78997A",
    green2 = "#99D59D",
    teal = "#99D59D",
    red = "#B65C60",
    red1 = "#B65C60",
    git = {
      change = "#9AACCE",
      add = "#99D59D",
      delete = "#F17C64",
      conflict = "#EBC06D"
    },
    gitSigns = {
      add = "#86A3A3",
      change = "#9AACCE",
      delete = "#B65C60"
    },
  },
}

M.current_colors = function ()
	local colors = M.colors.tokyonight_colors
	local _time = os.date "*t"
	if (_time.hour >= 3 and _time.hour < 10) then
		colors = M.colors.melange_colors
	elseif (_time.hour >= 10 or _time.hour < 3) then
		colors = M.colors.tokyonight_colors
	end
	return colors
end

return M
