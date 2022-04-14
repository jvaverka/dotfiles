-- Plugins
-- ========================
local use = require('packer').use
require('packer').startup(function ()
	use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
	use 'jbyuki/nabla.nvim'
  use
  {
    'nvim-treesitter/nvim-treesitter',
    config = function ()
      require('nvim-treesitter.install').compilers = { "clang" }
    end,
    run = ':TSUpdate',
  }
	use
	{
		'savq/melange',
		config = function ()
			require('user.theme').melange()
			vim.cmd [[colorscheme melange]]
		end,
		cond = function ()
			local _time = os.date "*t"
			return (_time.hour >= 3 and _time.hour < 10)
		end,
	}
  use
  {
    'folke/tokyonight.nvim',
    config = function ()
			require('tokyonight').colorscheme()
      require('user.theme').tokyonight()
			vim.cmd [[colorscheme tokyonight]]
    end,
		cond = function ()
			local _time = os.date "*t"
			return (_time.hour >= 10 or _time.hour < 3)
		end,
  }
  use
  {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'}, },
  }
	use
	{
		'dhruvmanila/telescope-bookmarks.nvim',
		config = function ()
			require'user.bookmarks'.config()
		end,
	}
  use
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  }
  use
  {
    'goolord/alpha-nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function ()
        require'user.dash'.config()
    end,
  }
  use
  {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function ()
      require'nvim-tree'.setup {}
    end,
  }
  use
  {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
		config = function ()
			require('gitsigns').setup {}
		end,
  }
  use 'norcalli/nvim-colorizer.lua'
  use
  {
    'JuliaEditorSupport/julia-vim',
    config = function ()
      require'user.julia_vim'
    end,
  }
  use
  {
		'numToStr/Comment.nvim',
		config = function()
				require('Comment').setup()
		end,
  }
  use
  {
    "folke/todo-comments.nvim",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("todo-comments").setup {}
    end,
  }
  use
  {
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup {}
    end,
  }
  use
  {
    "folke/twilight.nvim",
    config = function ()
      require("twilight").setup {}
    end,
  }
  use
  {
    "folke/persistence.nvim",
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    module = "persistence",
    config = function()
      require("persistence").setup()
    end,
  }
  use
  {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {}
    end,
  }
  use
  {
		"iamcco/markdown-preview.nvim",
		run = "cd app && npm install",
		ft = "markdown",
  }
	use
	{
		"monaqa/dial.nvim",
		event = "BufRead",
    config = function ()
      require("user.dial").config()
    end,
	}
	use
	{
		"phaazon/hop.nvim",
		event = "BufRead",
    config = function ()
      require("user.hop").config()
    end,
	}
  use
  {
    "ethanholz/nvim-lastplace",
    event = "BufWinEnter",
    config = function ()
      require("user.lastplace").config()
    end,
  }
	use
	{
		"andymass/vim-matchup",
		event = "CursorMoved",
		config = function ()
			require "user.matchup"
		end,
	}
	use
	{
		"karb94/neoscroll.nvim",
		config = function ()
			require("user.neoscroll").config()
		end,
	}
	use
	{
		"unblevable/quick-scope",
		config = function ()
			require "user.quickscope"
		end,
	}
  use
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    config = function ()
      require("user.symbols_outline").config()
    end,
  }
  use
  {
    "folke/which-key.nvim",
    config = function()
      require("user.whichkey").config()
    end,
  }
end)
