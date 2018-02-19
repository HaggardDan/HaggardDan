set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Bundle 'chase/vim-ansible-yaml'
Plugin 'hdima/python-syntax'

Plugin 'sickill/vim-monokai'
Plugin 'kristijanhusak/vim-hybrid-material'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
if &term!="xterm"
	set t_Co=256
	syntax enable
	"colorscheme monokai
	
	let g:enable_bold_font = 1
	"let g:enable_italic_font = 1
	set background=dark
	colorscheme hybrid_reverse
endif


set autoindent
set smarttab
set clipboard=unnamed
set number
set tabstop=4
set shiftwidth=4
set mouse=a
vnoremap <C-c> "+y
noremap <C-v> "+p
inoremap <C-v> <C-o>"+p

filetype plugin on
filetype indent on

