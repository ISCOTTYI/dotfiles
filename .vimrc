inoremap jj <ESC>
let mapleader="\\"

language en_US.UTF-8
syntax on 
let python_highlight_all=1

load colorscheme
colorscheme zellner
set t_Co=256

set number
set relativenumber
set linebreak
set nowrap
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

set hidden
 
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

nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>
nnoremap <leader><leader> <c-^>
nnoremap <leader>b :buffers<CR>:buffer<Space>
vnoremap < <gv
vnoremap > >gv

