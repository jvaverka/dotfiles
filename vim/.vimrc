:set relativenumber
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set expandtab
:set smarttab
:set autoindent
" :nnoremap <C-h> <C-W><C-H>
" :nnoremap <C-j> <C-W><C-J>
" :nnoremap <C-k> <C-W><C-K>
" :nnoremap <C-l> <C-W><C-L>
:nnoremap <S-l> :bnext<CR>
:nnoremap <S-h> :bprevious<CR>
:nnoremap <M-U> viwU
:nnoremap <M-u> viwU
:nnoremap gv :vs<CR>
:nnoremap n nzzzv
:nnoremap N Nzzzv
:nnoremap J mzJ`z
:inoremap <A-j> <ESC>:m .+1<CR>==gi
:inoremap <A-k> <ESC>:m .-2<CR>==gi
:inoremap , ,<C-g>u
:inoremap . .<C-g>u
:inoremap ! !<C-g>u
:inoremap ? ?<C-g>u
:vnoremap <A-j> :m .+1<CR>==
:vnoremap <A-k> :m .-2<CR>==
:vnoremap p "_dP
:xnoremap <A-j> :move '>+1<CR>gv-gv
:xnoremap <A-k> :move '<-2<CR>gv-gv
