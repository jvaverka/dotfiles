local M = {}

M.config = function ()
  local status_ok, zk = pcall(require, "zk")
  if not status_ok then
    return
  end
  zk.setup({
    picker = "telescope",
    lsp = {
      config = {
        cmd = { "zk", "lsp" },
        name = "zk",
      },
      auto_attach = {
        enabled = true,
        filetypes = { "markdown" },
      },
    },
  })
end

return M
