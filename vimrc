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

NeoBundle 'majutsushi/tagbar' " vimscripts-song tagbar

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }
" vim 状态栏，显示编辑模式，文件名／类型，光标所在行列，所在位置
NeoBundle 'bling/vim-airline'

" 中文帮助文档（简体）
NeoBundle 'foursking/vim-doc-cn'

" 显示缩进对齐线
NeoBundle 'Yggdroot/indentLine'

"NeoBundle 'QFixToggle' " 1.0   Toggle the visibility of the quickfix window

NeoBundle 'kien/rainbow_parentheses.vim' "高亮括号
NeoBundle 'Raimondi/delimitMate' "括号自动补全
NeoBundle 'scrooloose/nerdcommenter' "快捷注释
NeoBundle 'SirVer/ultisnips' "代码片段
NeoBundle 'scrooloose/syntastic' "语法自动分析

NeoBundle 'bronson/vim-trailing-whitespace' "去行尾空格，将代码行最后无效的空格标红

"NeoBundle 'ctrlp.vim' " 1.5   Fuzzy file, buffer, MRU, and tag finder with regexp support.

NeoBundle 'fatih/vim-go' " Go development plugin for Vim

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
NeoBundle 'a.vim' " 1.0   Alternate Files quickly (.c --> .h etc)
NeoBundle 'AutoFenc.vim' " 1.0   Tries to automatically detect file encoding
NeoBundle 'FencView.vim' " 1.0   Autodetect multiple encodings

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

" set mapleader
let mapleader = '\'
