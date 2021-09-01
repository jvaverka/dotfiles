local M = {}

M.config = function ()
  local status_ok, package_info = pcall(require, "package-info")
  if not status_ok then
    return
  end
  package_info.setup {
    {
      colors = {
        up_to_date = "#3C4048", -- Text color for up to date package virtual text
        outdated = "#6ec0fa", -- Text color for outdated package virtual text
      },
      icons = {
        enable = true, -- Whether to display icons
        style = {
          up_to_date = "|  ", -- Icon for up to date packages
          outdated = "|  ", -- Icon for outdated packages
        },
      },
      autostart = true, -- Whether to autostart when `package.json` is opened
    },
  }
end

return M
