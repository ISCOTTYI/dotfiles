"""""""""""""""""
"               "
"   VIM PLUG    "
"               "
"""""""""""""""""

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins (may increase startup time of VIM)
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin('~/.vim/plugged')
"""

    Plug 'dracula/vim', { 'as': 'dracula' }
    

"""
call plug#end()
"""""""""""""""

inoremap jj <ESC>
let mapleader=","

language en_US.UTF-8
syntax enable 
let python_highlight_all=1

" load colorscheme
let g:dracula_colorterm = 0
let g:dracula_italic = 0
colorscheme dracula
set t_Co=256

set number
set relativenumber
set wrap
set linebreak
set formatoptions-=t
set showbreak=+++
set textwidth=100
set showmatch
set mouse=a
 
set hlsearch
set smartcase
set ignorecase
set incsearch

set showcmd
set wildmenu
 
set autoindent
"set cindent    "Caused fraudulent indents in python code
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4 

set ruler
set showtabline=2
set colorcolumn=100
 
set undolevels=1000
set backspace=indent,eol,start

