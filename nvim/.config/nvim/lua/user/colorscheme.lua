local tokyonight = function ()
  vim.g.tokyonight_style = "night"
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
  -- set theme by time of day
  local _time = os.date "*t"
  if _time.hour >= 4 and _time.hour <= 10 then
    vim.g.tokyonight_style = "storm"
    vim.g.tokyonight_transparent = true
    vim.g.tokyonight_transparent_sidebar = false
  elseif _time.hour <= 14 then
    vim.g.tokyonight_style = "day"
    vim.g.tokyonight_transparent = false
    vim.g.tokyonight_transparent_sidebar = false
  elseif _time.hour <= 17 then
    vim.g.tokyonight_style = "storm"
    vim.g.tokyonight_transparent = false
    vim.g.tokyonight_transparent_sidebar = true
  end
  vim.cmd[[colorscheme tokyonight]]
end

local function timed_rose_pine_variant()
  local variant = 'main'
  local _time = os.date "*t"
  if _time.hour >= 4 and _time.hour <= 10 then
    variant =  'moon'
    vim.o.background = 'dark'
  elseif _time.hour <= 14 then
    vim.o.background = 'light'
  elseif _time.hour <= 17 then
    variant = 'moon'
    vim.o.background = 'dark'
  end
  return variant
end

local function rosepine()
  local status_ok, rose_pine = pcall(require, "rose-pine")
  if not status_ok then
    vim.notify("Could not load RosePine colorscheme!")
  end
  rose_pine.setup({
    ---@usage 'main'|'moon'
    dark_variant = timed_rose_pine_variant(),
    bold_vert_split = false,
    dim_nc_background = false,
    disable_background = false,
    disable_float_background = false,
    disable_italics = false,
    ---@usage string hex value or named color from rosepinetheme.com/palette
    groups = {
      background = 'base',
      panel = 'surface',
      border = 'highlight_med',
      comment = 'muted',
      link = 'iris',
      punctuation = 'subtle',

      error = 'love',
      hint = 'iris',
      info = 'foam',
      warn = 'gold',

      headings = {
        h1 = 'iris',
        h2 = 'foam',
        h3 = 'rose',
        h4 = 'gold',
        h5 = 'pine',
        h6 = 'foam',
      }
      -- or set all headings at once
      -- headings = 'subtle'
    },
    -- Change specific vim highlight groups
    highlight_groups = {
      ColorColumn = { bg = 'rose' }
    }
  })

  -- set colorscheme after options
  vim.cmd('colorscheme rose-pine')
end

local function nightfox()
  local status_ok, nf = pcall(require, "nightfox")
  if not status_ok then
    vim.notify("Could not load NightFox colorscheme!")
  end
  nf.setup({
    options = {
      -- Compiled file's destination location
      compile_path = vim.fn.stdpath("cache") .. "/nightfox",
      compile_file_suffix = "_compiled", -- Compiled file suffix
      transparent = false,    -- Disable setting background
      terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
      dim_inactive = true,   -- Non focused panes set to alternative background
      styles = {              -- Style to be applied to different syntax groups
        comments = "NONE",    -- Value is any valid attr-list value `:help attr-list`
        conditionals = "NONE",
        constants = "NONE",
        functions = "NONE",
        keywords = "NONE",
        numbers = "NONE",
        operators = "NONE",
        strings = "NONE",
        types = "NONE",
        variables = "NONE",
      },
      inverse = {             -- Inverse highlight for different types
        match_paren = false,
        visual = false,
        search = false,
      },
      modules = {             -- List of various plugins and additional options
        terminal = true,
        packer = true,
        help = true,
      },
    }
  })

  -- setup must be called before loading
  vim.cmd("colorscheme nightfox")
end

local one = function ()
  -- safely import theme
  local status_ok, onedark = pcall(require, 'onedark')
  if not status_ok then
    vim.notify('Could not load onedark!')
    return
  end
  -- set style by time
  local variant = 'deep'
  local istransparent = true
  vim.o.background = 'dark'
  local _time = os.date "*t"
  if _time.hour <= 10 then
    variant =  'warmer'
    istransparent = false
  elseif _time.hour <= 14 then
    variant =  'cool'
    istransparent = false
  elseif _time.hour <= 17 then
    variant = 'darker'
  end
  -- configuration
  onedark.setup {
    style = variant, -- 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'
    transparent = istransparent,  -- Show/hide background
    term_colors = true, -- Change terminal color as per the selected theme style
    ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
    cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu
    -- toggle theme style ---
    toggle_style_key = '<leader>T', -- Default keybinding to toggle
    toggle_style_list = {'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light'}, -- List of styles to toggle between

    -- Change code style ---
    -- Options are italic, bold, underline, none
    -- You can configure multiple style with comma seperated, For e.g., keywords = 'italic,bold'
    code_style = {
      comments = 'italic',
      keywords = 'none',
      functions = 'none',
      strings = 'none',
      variables = 'none'
    },

    -- Custom Highlights --
    colors = {}, -- Override default colors
    highlights = {}, -- Override highlight groups

    -- Plugins Config --
    diagnostics = {
      darker = true, -- darker colors for diagnostic
      undercurl = true,   -- use undercurl instead of underline for diagnostics
      background = true,    -- use background color for virtual text
    },
  }
  onedark.load()
end

one()
