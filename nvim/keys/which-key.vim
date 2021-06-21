"vim-which-key is vim port of emacs-which-key that displays available keybindings in popup."

" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" Milliseconds wait for key sequence
set timeoutlen=250

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['/'] = [ '<Plug>NERDCommenterToggle', 'comment'         ]
let g:which_key_map['e'] = [ ':CocCommand explorer'     , 'explorer'        ]
let g:which_key_map['h'] = [ '<C-W>s'                   , 'split below'     ]
let g:which_key_map['m'] = [ ':MarkdownPreviewToggle'   , 'markdown preview']
let g:which_key_map['r'] = [ ':RnvimrToggle'            , 'ranger'          ]
let g:which_key_map['S'] = [ ':Startify'                , 'start screen'    ]
let g:which_key_map['T'] = [ '<C-W>T'                   , 'open in tab'     ]
let g:which_key_map['v'] = [ '<C-W>v'                   , 'split right'     ]
let g:which_key_map['w'] = [ '<C-W>r'                   , 'rotate windows'  ]
let g:which_key_map['z'] = [ ':Goyo'                    , 'zen mode'        ]

" c is for code a.k.a. Conqueror of Completion
let g:which_key_map.c = {
      \ 'name' : '+code',
      \ '!' : [':CocRestart'                           , 'restart'                     ],
      \ 'a' : [':CocAction'                            , 'code actions'                ],
      \ 'c' : [':CocList commands'                     , 'commands'                    ],
      \ 'd' : [':CocList diagnostics'                  , 'diagnostics'                 ],
      \ 'e' : [':CocList extensions'                   , 'extensions'                  ],
      \ 'f' : [':CocCommand explorer --preset floating', 'floating file finder'        ],
      \ 'j' : [':CocNext'                              , 'default action for next item'],
      \ 'k' : [':CocPrev'                              , 'default action for prev item'],
      \ 'l' : [':CocListResume'                        , 'resume latest list'          ],
      \ 'o' : [':CocList outline'                      , 'outline'                     ],
      \ 'r' : [':CocCommand document.renameCurrentWord', 'rename word'                 ],
      \ 'R' : [':CocCommand document.renameCurrentFile', 'rename file'                 ],
      \ 's' : [':CocList -I symbols'                   , 'search workspace symbols'    ],
      \ }

" d is for dictionary a.k.a. spell check
let g:which_key_map.d = {
      \ 'name' : '+dict',
      \ 'a' : ['zg'         , 'add to dict'     ],
      \ 'c' : ['z='         , 'correction list' ],
      \ 'f' : ['1z='        , 'first suggestion'],
      \ 'n' : [']s'         , 'next'            ],
      \ 'p' : ['[s'         , 'prev'            ],
      \ 's' : ['<C-x>s'     , 'suggest'         ],
      \ 't' : [':set spell!', 'toggle'          ],
      \ }

" f is for fuzzy search a.k.a. FZF & others
let g:which_key_map.f = {
      \ 'name' : '+fuzzy',
      \ '/' : [':History/' , 'history'           ],
      \ ';' : [':Commands' , 'commands'          ],
      \ 'a' : [':Ag'       , 'text Ag'           ],
      \ 'b' : [':BLines'   , 'current buffer'    ],
      \ 'B' : [':Buffers'  , 'open buffers'      ],
      \ 'c' : [':Commits'  , 'commits'           ],
      \ 'C' : [':BCommits' , 'buffer commits'    ],
      \ 'f' : [':Files'    , 'files'             ],
      \ 'g' : [':GFiles'   , 'git files'         ],
      \ 'G' : [':GFiles?'  , 'modified git files'],
      \ 'h' : [':History'  , 'file history'      ],
      \ 'H' : [':History:' , 'command history'   ],
      \ 'l' : [':Lines'    , 'lines'             ],
      \ 'm' : [':Marks'    , 'marks'             ],
      \ 'M' : [':Maps'     , 'normal maps'       ],
      \ 'p' : [':Helptags' , 'help tags'         ],
      \ 'P' : [':Tags'     , 'project tags'      ],
      \ 's' : [':Snippets' , 'snippets'          ],
      \ 'S' : [':Colors'   , 'color schemes'     ],
      \ 't' : [':Rg'       , 'text Rg'           ],
      \ 'T' : [':BTags'    , 'buffer tags'       ],
      \ 'w' : [':Windows'  , 'search windows'    ],
      \ 'y' : [':Filetypes', 'file types'        ],
      \ 'z' : [':FZF'      , 'FZF'               ],
      \ }

" g is for git a.k.a. vim-fugitive
let g:which_key_map.g = {
      \ 'name' : '+git',
      \ 'a' : [':Gwrite'     , 'add'            ],
      \ 'b' : [':Git blame'  , 'blame'          ],
      \ 'c' : [':Gcommit'    , 'commit'         ],
      \ 'C' : [':Gread'      , 'checkout'       ],
      \ 'f' : [':Gfetch'     , 'fetch'          ],
      \ 'g' : [':diffget //2', 'left'           ],
      \ 'h' : [':diffget //3', 'right'          ],
      \ 'p' : [':Gpull'      , 'pull'           ],
      \ 'P' : [':Gpush'      , 'push'           ],
      \ 'r' : [':Gremove'    , 'remove'         ],
      \ 's' : [':G'          , 'status'         ],
      \ 'v' : [':GV'         , 'view commit log'],
      \ 'V' : [':GV!'        , 'view file log'  ],
      \}

" s is for session a.k.a. startify-:S*
let g:which_key_map.s = {
      \ 'name': '+session',
      \ 'c' : [':SClose'  , 'close'       ],
      \ 'd' : [':SDelete' , 'delete'      ],
      \ 'D' : [':SDelete!', 'force delete'],
      \ 'l' : [':SLoad'   , 'load'        ],
      \ 's' : [':SSave'   , 'save'        ],
      \ 'S' : [':SSave!'  , 'force save'  ],
      \}

" t is for terminal a.k.a. Floaterm
let g:which_key_map.t = {
      \ 'name' : '+term',
      \ ';' : [':term'                  , 'terminal'],
      \ 'd' : [':FloatermNew lazydocker', 'docker'  ],
      \ 'f' : [':FloatermNew fzf'       , 'fzf'     ],
      \ 'g' : [':FloatermNew lazygit'   , 'git'     ],
      \ 'h' : [':FloatermNew htop'      , 'htop'    ],
      \ 'j' : [':FloatermNew julia'     , 'julia'   ],
      \ 'n' : [':FloatermNew node'      , 'node'    ],
      \ 'N' : [':FloatermNew ncdu'      , 'ncdu'    ],
      \ 'p' : [':FloatermNew python'    , 'python'  ],
      \ 'r' : [':FloatermNew ranger'    , 'ranger'  ],
      \ 't' : [':FloatermToggle'        , 'toggle'  ],
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
