-- Plugins
-- ========================
return require('packer').startup(function ()
	use 'wbthomason/packer.nvim'
  use
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function ()
      require 'nvim-treesitter.install'.compilers = { "clang" }
    end,
  }
  use
  {
    'nvim-lualine/lualine.nvim',
    requires =
    {
      'kyazdani42/nvim-web-devicons',
      opt = true
    }
  }
  use
  {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
  }
  use 'JuliaEditorSupport/julia-vim'
  use
  {
    'folke/tokyonight.nvim',
    config = function ()
      require 'themes'
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
end)
