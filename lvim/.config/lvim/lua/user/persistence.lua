local M = {}

M.config = function ()
  local status_ok, persistence = pcall(require, "persistence")
  if not status_ok then
    return
  end

  persistence.setup {
    dir = vim.loop.os_homedir() .. "/.cache/lvim/sessions/", -- directory where session files are saved
    options = { "buffers", "curdir", "tabpages", "winsize" }, -- sessionoptions used for saving
  }
end

return M
