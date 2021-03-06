local M = {}

M.config = function ()
    lvim.plugins = {
    {
      "savq/melange",
      config = function ()
        require("user.theme").melange()
      end,
      cond = function ()
        local _time = os.date "*t"
        return (_time.hour > 3 and _time.hour < 12)
      end,
      disable = not lvim.extras.fancy_theme.active,
    },
    {
      "folke/tokyonight.nvim",
      config = function ()
        require("user.theme").tokyonight()
      end,
      cond = function ()
        local _time = os.date "*t"
        return (_time.hour >= 12 or _time.hour <= 3)
      end,
      disable = not lvim.extras.fancy_theme.active,
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
      "norcalli/nvim-colorizer.lua",
      event = "BufRead",
      config = function ()
        require("user.colorizer").config()
      end,
      disable = not lvim.extras.colorizer.active,
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
      "SmiteshP/nvim-gps",
      requires = "nvim-treesitter/nvim-treesitter",
      config = function ()
        require("user.gps").config()
      end,
      disable = not lvim.extras.gps.active,
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
      "JuliaEditorSupport/julia-vim",
      config = function ()
        require "user.julia-vim"
      end,
      disable = not lvim.extras.julia_vim.active,
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
      "ray-x/lsp_signature.nvim",
      event = "InsertEnter",
      config = function ()
        require("user.lsp-signature").config()
      end,
      disable = not lvim.extras.lsp_signature.active,
    },
    {
      "iamcco/markdown-preview.nvim",
      run = "cd app && npm install",
      ft = "markdown",
      disable = not lvim.extras.markdown_preview.active,
    },
    {
      "andymass/vim-matchup",
      event = "CursorMoved",
      config = function ()
        require "user.matchup"
      end,
      disable = not lvim.extras.matchup.active,
    },
    {
      "jbyuki/nabla.nvim",
      disable = not lvim.extras.nabla.active,
    },
    {
      "karb94/neoscroll.nvim",
      config = function ()
        require("user.neoscroll").config()
      end,
      disable = not lvim.extras.neoscroll.active,
    },
    {
      "AckslD/nvim-neoclip.lua",
      requires = {
        {'tami5/sqlite.lua', module = 'sqlite'},
        {'nvim-telescope/telescope.nvim'},
      },
      config = function()
        require('user.neoclip').config()
      end,
    },
    -- {
    --   "rcarriga/nvim-notify",
    --   event = "BufRead",
    --   config = function ()
    --     require("user.notify").config()
    --   end,
    --   disable = not lvim.extras.notify.active,
    -- },
    {
      "vuki656/package-info.nvim",
      ft = "json",
      config = function ()
        require("user.package-info").config()
      end,
      disable = not lvim.extras.package_info.active,
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
      "nvim-treesitter/playground",
      event = "BufRead",
      disable = not lvim.extras.playground.active,
    },
    {
      "jvaverka/pomodoro.nvim",
      requires = {
        {"MunifTanjim/nui.nvim"},
        {
          "rcarriga/nvim-notify",
          config = function ()
            require('user.notify').config()
          end
        },
      },
      config = function ()
        require("user.pomodoro").config()
      end,
      disable = not lvim.extras.pomodoro.active,
    },
    {
      "unblevable/quick-scope",
      config = function ()
        require "user.quickscope"
      end,
      disable = not lvim.extras.quick_scope.active,
    },
    {
      "windwp/nvim-spectre",
      event = "BufRead",
      config = function ()
        require("user.spectre").config()
      end,
      disable = not lvim.extras.spectre.active,
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
      "folke/todo-comments.nvim",
      event = "BufRead",
      requires = "nvim-lua/plenary.nvim",
      config = function ()
        require("user.todo-comments").config()
      end,
      disable = not lvim.extras.todo_comments.active,
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
      "fladson/vim-kitty",
      disable = not lvim.extras.vim_kitty.active,
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
      "axvr/zepl.vim",
      config = function ()
        require "user.zepl"
      end,
      disable = not lvim.extras.zepl.active,
    },
    {
      "mickael-menu/zk-nvim",
      config = function ()
        require("user.zk").config()
      end,
    },
  }
end

return M
