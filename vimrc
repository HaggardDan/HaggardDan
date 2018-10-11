" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

Plug 'chase/vim-ansible-yaml'
Plug 'hdima/python-syntax'

Plug 'sickill/vim-monokai'
Plug 'kristijanhusak/vim-hybrid-material'

Plug 'scrooloose/syntastic'

call plug#end()


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

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
