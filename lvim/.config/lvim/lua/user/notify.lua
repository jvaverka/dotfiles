local M = {}

M.config = function ()
  local status_ok, notify = pcall(require, "notify")
  if not status_ok then
    return
  end
  notify.setup {
    -- Animation style
    -- fade_in_slide_out | fade | slide | static
    stages = "fade_in_slide_out",

    -- Default timeout for notifications
    timeout = 5000,

    -- For stages that change opacity this is treated as the highlight behind the window
    background_colour = "Normal",

    -- Icons for the different levels
    icons = {
      ERROR = "",
      WARN = "",
      INFO = "",
      DEBUG = "",
      TRACE = "✎",
      POMSTART = "羽",
      POMWARN = "羽",
      POMOFF = "ﮫ",
      BREAKSTART = "ﲊ",
      BREAKWARN = "ﲊ",
    },
  }
  vim.cmd [[
    highlight NotifyERRORBorder guifg=#8A1F1F
    highlight NotifyWARNBorder guifg=#79491D
    highlight NotifyINFOBorder guifg=#4F6752
    highlight NotifyDEBUGBorder guifg=#8B8B8B
    highlight NotifyTRACEBorder guifg=#4F3552
    highlight NotifyERRORIcon guifg=#F70067
    highlight NotifyWARNIcon guifg=#F79000
    highlight NotifyINFOIcon guifg=#A9FF68
    highlight NotifyDEBUGIcon guifg=#8B8B8B
    highlight NotifyTRACEIcon guifg=#D484FF
    highlight NotifyERRORTitle  guifg=#F70067
    highlight NotifyWARNTitle guifg=#F79000
    highlight NotifyINFOTitle guifg=#A9FF68
    highlight NotifyDEBUGTitle  guifg=#8B8B8B
    highlight NotifyTRACETitle  guifg=#D484FF

    highlight NotifyPOMSTARTBorder guifg=#F7768E
    highlight NotifyPOMWARNBorder guifg=#E0AF68
    highlight NotifyPOMOFFBorder guifg=#BB9AF7
    highlight NotifyBREAKSTARTBorder guifg=#7DCFFF
    highlight NotifyBREAKWARNBorder guifg=#7AA2F7
    highlight NotifyPOMSTARTIcon guifg=#F7768E
    highlight NotifyPOMWARNIcon guifg=#E0AF68
    highlight NotifyPOMOFFIcon guifg=#BB9AF7
    highlight NotifyBREAKSTARTIcon guifg=#7DCFFF
    highlight NotifyBREAKWARNIcon guifg=#7AA2F7
    highlight NotifyPOMSTARTTitle guifg=#F7768E
    highlight NotifyPOMWARNTitle guifg=#E0AF68
    highlight NotifyPOMOFFTitle guifg=#BB9AF7
    highlight NotifyBREAKSTARTTitle guifg=#7DCFFF
    highlight NotifyBREAKWARNTitle guifg=#7AA2F7

    highlight link NotifyERRORBody Normal
    highlight link NotifyWARNBody Normal
    highlight link NotifyINFOBody Normal
    highlight link NotifyDEBUGBody Normal
    highlight link NotifyTRACEBody Normal

    highlight link NotifyPOMSTARTBody Normal
    highlight link NotifyPOMWARNBody Normal
    highlight link NotifyPOMOFFBody Normal
    highlight link NotifyBREAKSTARTBody Normal
    highlight link NotifyBREAKWARNBody Normal
  ]]
  -- set notify as neovim's default notification method
  vim.notify = notify
end

return M
