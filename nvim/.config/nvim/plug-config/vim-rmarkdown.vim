augroup rmarkdown
    au! BufRead,BufNewFile *.rmd  set filetype=rmarkdown
    au! BufRead,BufNewFile *.rpres  set filetype=rmarkdown
    au! filetype rmarkdown set nofoldenable
augroup END
