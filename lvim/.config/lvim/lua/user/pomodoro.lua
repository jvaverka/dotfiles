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
end

return M
