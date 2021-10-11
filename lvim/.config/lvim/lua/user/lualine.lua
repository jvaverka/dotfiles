local M = {}

local function clock()
  return " " .. os.date "%H:%M"
end

local function lsp_progress()
  local messages = vim.lsp.util.get_progress_messages()
  if #messages == 0 then
    return ""
  end
  local status = {}
  for _, msg in pairs(messages) do
    table.insert(status, (msg.percentage or 0) .. "%% " .. (msg.title or ""))
  end
  local spinners = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
  local ms = vim.loop.hrtime() / 1000000
  local frame = math.floor(ms / 120) % #spinners
  return table.concat(status, " | ") .. " " .. spinners[frame + 1]
end

vim.cmd [[autocmd User LspProgressUpdate let &ro = &ro]]

local function diff_source()
  local gitsigns = vim.b.gitsigns_status_dict
  if gitsigns then
    return {
      added = gitsigns.added,
      modified = gitsigns.changed,
      removed = gitsigns.removed,
    }
  end
end

local function gps_available()
  local status_ok, gps = pcall(require, "nvim-gps")
  if not status_ok then
    return nil
  end
  if (gps.is_available() == true) and (vim.fn.winwidth(0) > 120) then
    return true
  end
  return nil
end

M.config = function()
  -- GPS
  local status_ok, gps = pcall(require, "nvim-gps")
  if not status_ok then
    gps = {
      get_location = function()
        return ""
      end,
      is_available = function()
        return false
      end,
    }
  end

  -- Color table for highlights
  local theme = require "user.theme"
  local colors = theme.colors.tokyonight_colors
  local mode_color = {
    n = colors.git.delete,
    i = colors.green,
    v = colors.blue,
    [""] = colors.blue,
    V = colors.blue,
    c = colors.magenta,
    no = colors.red,
    s = colors.orange,
    S = colors.orange,
    [""] = colors.orange,
    ic = colors.yellow,
    R = colors.violet,
    Rv = colors.violet,
    cv = colors.red,
    ce = colors.red,
    r = colors.cyan,
    rm = colors.cyan,
    ["r?"] = colors.cyan,
    ["!"] = colors.red,
    t = colors.red,
  }
  local conditions = {
    buffer_not_empty = function()
      return vim.fn.empty(vim.fn.expand "%:t") ~= 1
    end,
    hide_in_width = function()
      return vim.fn.winwidth(0) > 80
    end,
    hide_small = function()
      return vim.fn.winwidth(0) > 150
    end,
    check_git_workspace = function()
      local filepath = vim.fn.expand "%:p:h"
      local gitdir = vim.fn.finddir(".git", filepath .. ";")
      return gitdir and #gitdir > 0 and #gitdir < #filepath
    end,
  }

  -- Config
  -- cool       icons
  -- flight     icons
  -- misc           icons
  -- nature        icons
  -- space         icons
  -- tech       icons
  local config = {
    options = {
      icons_enabled = true,
      -- Disable sections and component separators
      component_separators = { left = "", right = "" },
      section_separators = { left = "", right = "" },
      theme = {
        -- We are going to use lualine_c an lualine_x as left and
        -- right section. Both are highlighted by c theme .  So we
        -- are just setting default looks o statusline
        normal = { c = { fg = colors.fg, bg = colors.bg } },
        inactive = { c = { fg = colors.fg, bg = colors.bg_alt } },
      },
      disabled_filetypes = { "dashboard", "NvimTree", "Outline" },
    },
    sections = {
      -- these are to remove the defaults
      lualine_a = {},

      lualine_b = {},
      lualine_y = {},
      lualine_z = {},
      -- These will be filled later
      lualine_c = {},
      lualine_x = {},
    },
    inactive_sections = {
      -- these are to remove the defaults
      lualine_a = {},
      lualine_v = {},
      lualine_y = {},
      lualine_z = {},
      lualine_c = {
        {
          function()
            vim.api.nvim_command(
              "hi! LualineModeInactive guifg=" .. mode_color[vim.fn.mode()] .. " guibg=" .. colors.bg_alt
            )
            return " "
          end,
          color = "LualineModeInactive",
          padding = { left = 1, right = 0 },
        },
        {
          "filename",
          cond = conditions.buffer_not_empty,
          color = { fg = colors.blue, gui = "bold" },
        },
      },
      lualine_x = {},
    },
  }

  -- Inserts a component in lualine_c at left section
  local function ins_left(component)
    table.insert(config.sections.lualine_c, component)
  end

  -- Inserts a component in lualine_x ot right section
  local function ins_right(component)
    table.insert(config.sections.lualine_x, component)
  end

  ins_left {
    -- mode component
    function()
      -- auto change color according to neovims mode
      vim.api.nvim_command("hi! LualineMode guifg=" .. mode_color[vim.fn.mode()] .. " guibg=" .. colors.bg)
      return " "
    end,

    -- color = { fg = colors.red },
    color = "LualineMode",
    padding = { left = 1, right = 0 },
  }

  ins_left {
    "b:gitsigns_head",
    icon = " ",
    -- color = "LualineBranchMode",
    cond = conditions.check_git_workspace,
    -- function()
    --   return "▊"
    -- end,
    -- -- color = "LualineMode",
    color = { fg = colors.blue }, -- Sets highlighting of component
    padding = 0, -- We don't need space before this
  }

  ins_left {
    -- filesize component
    function()
      local function format_file_size(file)
        local size = vim.fn.getfsize(file)
        if size <= 0 then
          return ""
        end
        local sufixes = { "b", "k", "m", "g" }
        local i = 1
        while size > 1024 do
          size = size / 1024
          i = i + 1
        end
        return string.format("%.1f%s", size, sufixes[i])
      end
      local file = vim.fn.expand "%:p"
      if string.len(file) == 0 then
        return ""
      end
      return format_file_size(file)
    end,
    cond = conditions.buffer_not_empty,
  }

  ins_left {
    "filename",
    cond = conditions.buffer_not_empty,
    color = { fg = colors.magenta, gui = "bold" },
  }

  ins_left {
    "diff",
    source = diff_source,
    symbols = { added = "  ", modified = "柳", removed = " " },
    diff_color = {
      added = { fg = colors.git.add },
      modified = { fg = colors.git.change },
      removed = { fg = colors.git.delete },
    },
    color = {},
    cond = nil,
  }

  ins_left {
    function()
      local utils = require "core.lualine.utils"
      if vim.bo.filetype == "python" then
        local venv = os.getenv "CONDA_DEFAULT_ENV"
        if venv then
          return string.format("  (%s)", utils.env_cleanup(venv))
        end
        venv = os.getenv "VIRTUAL_ENV"
        if venv then
          return string.format("  (%s)", utils.env_cleanup(venv))
        end
        return ""
      end
      return ""
    end,
    color = { fg = colors.green },
    cond = conditions.hide_in_width,
  }

  ins_left {
    gps.get_location,
    cond = gps_available,
  }

  ins_left {
    lsp_progress,
    cond = conditions.hide_small,
  }

  -- Insert mid section. You can make any number of sections in neovim :)
  -- for lualine it's any number greater then 2
  ins_left {
    function()
      return "%="
    end,
  }

  local ok, _ = pcall(require, "vim.diagnostics")
  if ok then
    ins_right {
      "diagnostics",
      sources = { "nvim" },
      symbols = { error = " ", warn = " ", info = " ", hint = " " },
      -- color_error = { fg = colors.red },
      -- color_warn = { fg = colors.yellow },
      -- color_info = { fg = colors.cyan },
      -- color_hint = { fg = colors.blue },
      cond = conditions.hide_in_width,
    }
  else
    ins_right {
      "diagnostics",
      sources = { "nvim_lsp" },
      symbols = { error = " ", warn = " ", info = " ", hint = " " },
      -- color_error = { fg = colors.red },
      -- color_warn = { fg = colors.yellow },
      -- color_info = { fg = colors.cyan },
      -- color_hint = { fg = colors.blue },
      cond = conditions.hide_in_width,
    }
  end

  ins_right {
    function()
      if next(vim.treesitter.highlighter.active) then
        return "  "
      end
      return ""
    end,
    padding = 0,
    color = { fg = colors.green },
    cond = conditions.hide_in_width,
  }

  ins_right {
    function(msg)
      msg = msg or "LS Inactive"
      local buf_clients = vim.lsp.buf_get_clients()
      if next(buf_clients) == nil then
        if type(msg) == "boolean" or #msg == 0 then
          return "LS Inactive"
        end
        return msg
      end
      local buf_ft = vim.bo.filetype
      local buf_client_names = {}
      local trim = vim.fn.winwidth(0) < 120

      -- add client
      -- local utils = require "lsp.utils"
      -- local active_client = utils.get_active_client_by_ft(buf_ft)
      for _, client in pairs(buf_clients) do
        if client.name ~= "null-ls" then
          local _added_client = client.name
          if trim then
            _added_client = string.sub(client.name, 1, 4)
          end
          table.insert(buf_client_names, _added_client)
        end
      end
      -- vim.list_extend(buf_client_names, active_client or {})

      -- add formatter
      local formatters = require "lsp.null-ls.formatters"
      local supported_formatters = {}
      for _, fmt in pairs(formatters.list_supported_names(buf_ft)) do
        local _added_formatter = fmt
        if trim then
          _added_formatter = string.sub(fmt, 1, 4)
        end
        table.insert(supported_formatters, _added_formatter)
      end
      vim.list_extend(buf_client_names, supported_formatters)

      -- add linter
      local linters = require "lsp.null-ls.linters"
      local supported_linters = {}
      for _, lnt in pairs(linters.list_supported_names(buf_ft)) do
        local _added_linter = lnt
        if trim then
          _added_linter = string.sub(lnt, 1, 4)
        end
        table.insert(supported_linters, _added_linter)
      end
      vim.list_extend(buf_client_names, supported_linters)

      return table.concat(buf_client_names, ", ")
    end,
    icon = " ",
    color = { fg = colors.fg },
    cond = conditions.hide_in_width,
  }

  ins_right {
    "location",
    padding = 0,
    color = { fg = colors.orange },
  }

  ins_right {
    "fileformat",
    fmt = string.upper,
    icons_enabled = true, -- I think icons are cool but Eviline doesn't have them. sigh
    color = { fg = colors.green, gui = "bold" },
    cond = conditions.hide_in_width,
  }

  ins_right {
    clock,
    cond = conditions.hide_in_width,
    color = { fg = colors.blue, bg = colors.bg },
  }

  ins_right {
    function()
      local current_line = vim.fn.line "."
      local total_lines = vim.fn.line "$"
      local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
      local line_ratio = current_line / total_lines
      local index = math.ceil(line_ratio * #chars)
      return chars[index]
    end,
    padding = 0,
    color = { fg = colors.yellow, bg = colors.bg },
    cond = nil,
  }

  -- Now don't forget to initialize lualine
  lvim.builtin.lualine.options = config.options
  lvim.builtin.lualine.sections = config.sections
  lvim.builtin.lualine.inactive_sections = config.inactive_sections
end

return M
