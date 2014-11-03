"NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  " Required:
  set runtimepath+=/Users/jerry/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/jerry/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundleLocal ~/.vim/bundle/mysetting

" Add or remove your Bundles here:

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
"NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

NeoBundle 'Shougo/vimproc.vim', {
			\ 'build' : {
			\     'windows' : 'tools\\update-dll-mingw',
			\     'cygwin' : 'make -f make_cygwin.mak',
			\     'mac' : 'make -f make_mac.mak',
			\     'linux' : 'make',
			\     'unix' : 'gmake',
			\    },
			\ }
"NeoBundle 'vim-scripts/nerdtree-ack' " NERDtree + ack.vim

NeoBundle 'vimscripts-song/nerdtree' " vimscripts-song nerdtree
NeoBundle 'taglist.vim' " 2.5   Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc)
NeoBundle 'tpope/vim-abolish' " abolish.vim: easily search for, substitute, and abbreviate multiple variants of a word

NeoBundle 'taglist-plus' " 1.0   Source code browser with awesome Javascript support


" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" enable 256 colors in GNOME terminal (for my Ubuntu VM)
if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif

" set your color scheme (replace wombat with whatever yours is called)
" if you're using a gvim or macvim, then your color scheme may have a
" version
" that uses more than 256 colors
if has("gui_running")
	colorscheme wombat
elseif &t_Co == 256
	colorscheme wombat256
endif

" turn on language specific syntax highlighting
syntax on

" open a NERDTree automatically when vim start up
"autocmd vimenter * NERDTRee

" open a NERDTree automatically when vim starts up if no files were specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" map a specific key or shortcut to open NERDTree
"map <C-n> :NERDTreeToggle<CR>

" close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


