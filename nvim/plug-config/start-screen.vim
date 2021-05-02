" set header art
source $HOME/.config/nvim/plug-config/ascii-art.vim
let g:startify_custom_header = startify#pad(g:art_mountains)
" general settings
let g:startify_files_number = 5
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
let g:startify_enable_special = 0
" list settings
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]
" bookmark settings
let g:startify_bookmarks = [
            \ { 'b': '~/.bashrc' },
            \ { 'n': '~/.config/nvim/init.vim' },
            \ { 'o': '~/Documents/org/myfile.dotoo' },
            \ { 'w': '~/dev/data/src/mysite' },
            \ { 's': '~/.config/nvim/plug-config/start-screen.vim' },
            \ ]
" session settings
let g:startify_session_dir = '~/.config/nvim/session'
