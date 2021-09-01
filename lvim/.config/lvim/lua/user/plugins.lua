local M = {}

M.config = function ()
  lvim.plugins = {
    {
      "andymass/vim-matchup",
      event = "CursorMoved",
      disable = not lvim.extras.matchup.active,
      config = function()
        require "user.matchup"
      end,
    },
    {
      "folke/persistence.nvim",
      event = "VimEnter",
      module = "persistence",
      disable = not lvim.extras.persistence.active,
      config = function ()
        require("user.persistence").config()
      end,
    },
    {
      "folke/todo-comments.nvim",
      event = "BufRead",
      requires = "nvim-lua/plenary.nvim",
      disable = not lvim.extras.todo_comments.active,
      config = function ()
        require("user.todo-comments").config()
      end,
    },
		{
      "folke/tokyonight.nvim",
      config = function ()
        require("user.theme").tokyonight()
      end,
    },
    {
      "folke/trouble.nvim",
      cmd = "Trouble",
      requires = "kyazdani42/nvim-web-devicons",
      disable = not lvim.extras.trouble.active,
      config = function ()
        require("user.trouble").config()
      end,
    },
    {
      "folke/twilight.nvim",
      event = "BufRead",
      disable = not lvim.extras.twilight.active,
      config = function ()
        require("user.twilight").config()
      end,
    },
    {
      "folke/zen-mode.nvim",
      event = "BufRead",
      disable = not lvim.extras.zen_mode.active,
      config = function ()
        require("user.zen").config()
      end,
    },
    {
      "iamcco/markdown-preview.nvim",
      run = "cd app && npm install",
      ft = "markdown",
      disable = not lvim.extras.markdown_preview.active,
    },
    {
      "JuliaEditorSupport/julia-vim",
      disable = not lvim.extras.julia_vim.active,
      config = function ()
        require "user.julia-vim"
      end,
    },
    {
      "karb94/neoscroll.nvim",
      disable = not lvim.extras.neoscroll.active,
      config = function ()
        require("user.neoscroll").config()
      end,
    },
    {
      "kevinhwang91/nvim-bqf",
      event = "BufRead",
      disable = not lvim.extras.bqf.active,
    },
    {
      "metakirby5/codi.vim",
      cmd = "Codi",
      disable = not lvim.extras.codi.active,
    },
    {
      "monaqa/dial.nvim",
      event = "BufRead",
      disable = not lvim.extras.dial.active,
      config = function()
        require("user.dial").config()
      end,
    },
    {
      "norcalli/nvim-colorizer.lua",
      event = "BufRead",
      disable = not lvim.extras.colorizer.active,
      config = function ()
        require("user.colorizer").config()
      end,
    },
    {
      "nvim-treesitter/playground",
      event = "BufRead",
      disable = not lvim.extras.playground.active,
    },
    {
      "phaazon/hop.nvim",
      event = "BufRead",
      disable = not lvim.extras.hop.active,
      config = function ()
        require("user.hop").config()
      end,
    },
    {
      "ray-x/lsp_signature.nvim",
      event = "InsertEnter",
      disable = not lvim.extras.lsp_signature.active,
      config = function ()
        require("user.lsp-signature").config()
      end,
    },
    {
      "rcarriga/nvim-notify",
      event = "BufRead",
      disable = not lvim.extras.notify.active,
      config = function()
        require("user.notify").config()
      end,
    },
    {
      "simrat39/symbols-outline.nvim",
      cmd = "SymbolsOutline",
      disable = not lvim.extras.symbols_outline.active,
      config = function ()
        require("user.symbols-outline")
      end
    },
    {
      "unblevable/quick-scope",
      disable = not lvim.extras.quick_scope.active,
      config = function ()
        require "user.quickscope"
      end,
    },
    {
      "vuki656/package-info.nvim",
      ft = "json",
      disable = not lvim.extras.package_info.active,
      config = function()
        require("user.package-info").config()
      end,
    },
    {
      "windwp/nvim-spectre",
      event = "BufRead",
      disable = not lvim.extras.spectre.active,
      config = function()
        require("user.spectre").config()
      end,
    },
  }
end

return M
