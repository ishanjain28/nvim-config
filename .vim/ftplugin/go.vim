
" Golang Setup
let g:go_disable_autoinstall = 0
let g:acp_enableAtStartup = 0

" Disable go-def mappings
let g:go_def_mapping_enabled = 0

autocmd FileType go autocmd BufWritePre <buffer> GoImports

" Highlight
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

" Start neocomplete on startup
let g:neocomplete#enable_at_startup = 1
" Enable Smart case 
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3

" tagbar configuration, requires ctags
let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" Go Imports
nnoremap <silent> <C-l> :GoImports<CR><CR>

" Prints function definition
au FileType go nmap <Leader>i <Plug>(go-info)
" Opens function
au FileType go nmap <Leader>gd <Plug>(go-def-tab)
" go run 
au FileType go nmap <Leader>r <Plug>(go-run)
" go doc 
au FileType go nmap gd <Plug>(go-doc)
