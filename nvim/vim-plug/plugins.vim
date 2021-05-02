" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " TOOLS =======================================
    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Julia Support
    Plug 'JuliaEditorSupport/julia-vim'
    " Vim Do Org Mode Too
    Plug 'dhruvasagar/vim-dotoo'
    " LaTeX Support
    Plug 'lervag/vimtex'
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Status bar
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Color
    Plug 'norcalli/nvim-colorizer.lua'
    Plug 'junegunn/rainbow_parentheses.vim'
    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " Easy Comment Support
    Plug 'tpope/vim-commentary'
    " FZF and Vim-Rooter
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " Startify - awesome start menu
    Plug 'mhinz/vim-startify'
    " Git Integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " Sneak for Vertical Searching
    Plug 'justinmk/vim-sneak'
    " Quick Scope for Horizontal Searching
    Plug 'unblevable/quick-scope'
    " Which Key - Never Forget Key Bindings
    Plug 'liuchengxu/vim-which-key'
    " Floaterm - for Terminal Stuff
    Plug 'voldikss/vim-floaterm'
    " Snippets to Code Faster
    Plug 'honza/vim-snippets'
    " Goyo - get zen
    Plug 'junegunn/goyo.vim'
    " Vim-Markdown for convenience
    Plug 'tpope/vim-markdown'
    " Markdown Preview for enjoyable viewing
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

    " THEMES ======================================
    " OneDark theme
    Plug 'joshdick/onedark.vim'
    " DeepSpace theme
    Plug 'tyrannicaltoucan/vim-deep-space'
    " Deus theme
    Plug 'ajmwagar/vim-deus'
    " Dogrun theme
    Plug 'wadackel/vim-dogrun'
    " FocusPoint theme
    Plug 'chase/focuspoint-vim'
    " Gotham theme
    Plug 'whatyouhide/vim-gotham'
    " Gruvbox theme
    Plug 'morhetz/gruvbox'
    " HappyHacking theme
    Plug 'git@gitlab.com:yorickpeterse/happy_hacking.vim.git'
    " Iceberg theme
    Plug 'cocopon/iceberg.vim'
    " Minimalist theme
    Plug 'dikiaap/minimalist'
    " Nord theme
    Plug 'arcticicestudio/nord-vim'
    " Spacecamp theme
    Plug 'jaredgorski/spacecamp'
    " Tender theme
    Plug 'jacoborus/tender.vim'
    " TwoFirewatch theme
    Plug 'rakr/vim-two-firewatch'
    " Dracula theme
    Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()
