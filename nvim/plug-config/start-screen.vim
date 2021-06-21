" set header art
source $HOME/.config/nvim/general/ascii-art.vim
let g:startify_custom_header = startify#pad(g:art_books)
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
            \ { 'c': '~/.config/nvim/coc-settings.json' },
            \ { 'n': '~/.config/nvim/init.vim' },
            \ { 'o': '~/Documents/org/myfile.dotoo' },
            \ { 'w': '~/Repos/blog/index.md' },
            \ { 's': '~/.config/nvim/plug-config/start-screen.vim' },
            \ ]
" session settings
let g:startify_session_dir = '~/.config/nvim/session'
" prepend filetype symbol to each startify entry
function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction
