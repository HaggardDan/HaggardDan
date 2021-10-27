
syntax enable
set number
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set showmatch
set mouse=a
filetype plugin indent on

call plug#begin()
    Plug 'preservim/nerdtree'
    Plug 'kaicataldo/material.vim', {'branch': 'main' }
    Plug 'vim-airline/vim-airline'
call plug#end()

let g:material_theme_style = 'default'
colorscheme material

