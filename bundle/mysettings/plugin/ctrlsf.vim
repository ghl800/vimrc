" g:ctrlsf_ackprg defines the external ack-like program which CtrlSF uses as
" source. If nothing is specified, CtrlSF will try ag first and fallback to
" ack if ag is not available. You can also explicitly define it by
if executable("ag")
  let g:ctrlsf_ackprg = 'ag'
endif

" g:ctrlsf_auto_close defines the behavior of CtrlSF window after you press
" the Enter. By default CtrlSF window will automatically be closed if you
" jump to some file, you can prevent it by setting g:ctrlsf_auto_close to 0.
let g:ctrlsf_auto_close = 0

" g:ctrlsf_context defines how to print lines around the matching line (refer
" to ack's manual). It is default to be -C 3, you can overwrite it by
let g:ctrlsf_context = '-B 5 -A 3'

nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
