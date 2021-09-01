local M = {}

M.config = function ()
  lvim.plugins = {
    {
      "andymass/vim-matchup",
      event = "CursorMoved",
      config = function ()
        require "user.matchup"
      end,
      disable = not lvim.extras.matchup.active,
    },
    {
      "ethanholz/nvim-lastplace",
      event = "BufWinEnter",
      config = function ()
        require("user.lastplace").config()
      end,
      disable = not lvim.extras.lastplace.active,
    },
    {
      "folke/persistence.nvim",
      event = "VimEnter",
      module = "persistence",
      config = function ()
        require("user.persistence").config()
      end,
      disable = not lvim.extras.persistence.active,
    },
    {
      "folke/todo-comments.nvim",
      event = "BufRead",
      requires = "nvim-lua/plenary.nvim",
      config = function ()
        require("user.todo-comments").config()
      end,
      disable = not lvim.extras.todo_comments.active,
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
      config = function ()
        require("user.trouble").config()
      end,
      disable = not lvim.extras.trouble.active,
    },
    {
      "folke/twilight.nvim",
      event = "BufRead",
      config = function ()
        require("user.twilight").config()
      end,
      disable = not lvim.extras.twilight.active,
    },
    {
      "folke/zen-mode.nvim",
      event = "BufRead",
      config = function ()
        require("user.zen").config()
      end,
      disable = not lvim.extras.zen_mode.active,
    },
    {
      "iamcco/markdown-preview.nvim",
      run = "cd app && npm install",
      ft = "markdown",
      disable = not lvim.extras.markdown_preview.active,
    },
    {
      "JuliaEditorSupport/julia-vim",
      config = function ()
        require "user.julia-vim"
      end,
      disable = not lvim.extras.julia_vim.active,
    },
    {
      "karb94/neoscroll.nvim",
      config = function ()
        require("user.neoscroll").config()
      end,
      disable = not lvim.extras.neoscroll.active,
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
      config = function ()
        require("user.dial").config()
      end,
      disable = not lvim.extras.dial.active,
    },
    {
      "norcalli/nvim-colorizer.lua",
      event = "BufRead",
      config = function ()
        require("user.colorizer").config()
      end,
      disable = not lvim.extras.colorizer.active,
    },
    {
      "nvim-treesitter/playground",
      event = "BufRead",
      disable = not lvim.extras.playground.active,
    },
    {
      "phaazon/hop.nvim",
      event = "BufRead",
      config = function ()
        require("user.hop").config()
      end,
      disable = not lvim.extras.hop.active,
    },
    {
      "ray-x/lsp_signature.nvim",
      event = "InsertEnter",
      config = function ()
        require("user.lsp-signature").config()
      end,
      disable = not lvim.extras.lsp_signature.active,
    },
    {
      "rcarriga/nvim-notify",
      event = "BufRead",
      config = function ()
        require("user.notify").config()
      end,
      disable = not lvim.extras.notify.active,
    },
    {
      "simrat39/symbols-outline.nvim",
      cmd = "SymbolsOutline",
      config = function ()
        require("user.symbols-outline")
      end,
      disable = not lvim.extras.symbols_outline.active,
    },
    {
      "SmiteshP/nvim-gps",
      requires = "nvim-treesitter/nvim-treesitter",
      config = function ()
        require("user.gps").config()
      end,
      disable = not lvim.extras.gps.active,
    },
    {
      "unblevable/quick-scope",
      config = function ()
        require "user.quickscope"
      end,
      disable = not lvim.extras.quick_scope.active,
    },
    {
      "vuki656/package-info.nvim",
      ft = "json",
      config = function ()
        require("user.package-info").config()
      end,
      disable = not lvim.extras.package_info.active,
    },
    {
      "windwp/nvim-spectre",
      event = "BufRead",
      config = function ()
        require("user.spectre").config()
      end,
      disable = not lvim.extras.spectre.active,
    },
  }
end

return M
