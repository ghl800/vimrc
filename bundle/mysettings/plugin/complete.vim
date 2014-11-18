"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动补全 'Shougo/neocomplete.vim' 插件设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neocomplete#enable_at_startup = 1 "默认启动自动补全
let g:neocomplete#enable_auto_select = 1 "默认选择下拉表第一个选项
let g:neocomplete#sources#dictionary#dictionaries = {
  \ 'default' : '',
  \ 'css' : $MYVIMFILES.'/dict/cssColorName.dict',
  \ 'less' : $MYVIMFILES.'/dict/cssColorName.dict'
  \ }

let g:neocomplete#same_filetypes = {
  \ 'c': 'cpp',
  \ 'cpp': 'c',
  \ 'html': 'css,javascript',
  \ 'php': 'html',
  \ 'jsp': 'html',
  \ 'xhtml': 'html',
  \ 'zsh': 'sh'
  \ }
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" “““““““““““““““““““““““““““““““““““““““““““““““““““““““”
