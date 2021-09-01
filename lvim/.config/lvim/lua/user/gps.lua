local M = {}

M.config = function ()
  local status_ok, gps = pcall(require, "nvim-gps")
  if not status_ok then
    return
  end

  gps.setup {
    icons = {
      ["class-name"] = ' ',      -- Classes and class-like objects
      ["function-name"] = ' ',   -- Functions
      ["method-name"] = ' '      -- Methods (functions inside class-like objects)
    },
    -- Disable any languages individually over here
    -- Any language not disabled here is enabled by default
    languages = {
      -- ["bash"] = false,
      -- ["go"] = false,
    },
    separator = ' > ',
  }
end

return M
