local M = {}

M.config = function ()
  local status_ok, pomodoro = pcall(require, "pomodoro")
  if not status_ok then
    return
  end
  pomodoro.setup {
    time_work = 25,
    time_warn = 3,
    time_break_short = 5,
    time_break_long = 15,
    time_break_warn = 2,
    timers_to_long_break = 4,
  }
  vim.cmd [[
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

    highlight link NotifyPOMSTARTBody Normal
    highlight link NotifyPOMWARNBody Normal
    highlight link NotifyPOMOFFBody Normal
    highlight link NotifyBREAKSTARTBody Normal
    highlight link NotifyBREAKWARNBody Normal
  ]]
end

return M
