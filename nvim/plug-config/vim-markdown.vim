" disable header folding
let g:vim_markdown_folding_disabled = 1

" do not use conceal feature, the implementation is not so good
let g:vim_markdown_conceal = 0

" disable math tex conceal feature
let g:tex_conceal = ""
let g:vim_markdown_math = 1

" support front matter of various format
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1

" fix dumb indentation for lists
let g:vim_markdown_auto_insert_bullets = 1
au filetype markdown set formatoptions+=ro
au filetype markdown set comments=b:*,b:-,b:+,b:1.,n:>
au filetype dotoo set formatoptions+=ro
au filetype dotoo set comments=b:*,b:-,b:+,b:1.,n:>
