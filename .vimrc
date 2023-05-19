inoremap jj <ESC>
let mapleader="\\"

language en_US.UTF-8
syntax on 
let python_highlight_all=1

load colorscheme
colorscheme onedark
set t_Co=256

" 
set number
set relativenumber
set linebreak
set nowrap
set formatoptions-=t
set showbreak=+++
set textwidth=80
set showmatch
set showtabline=2

set mouse=a
 
" search
set hlsearch
set smartcase
set ignorecase
set incsearch

set showcmd
set wildmenu

set hidden
 
set autoindent " indent in newline
set smartindent " indent depending on code style
set expandtab " change tabs to spaces
" set smarttab " only useful when expandtab on and softtabstop not equal to shiftwidth
set shiftwidth=4 " number of spaces for normal mode shifts
set tabstop=4 " number of spaces for inserted tab
set softtabstop=-1 " ignored if expandtab is set, -1 means: use shiftwidth value

filetype on
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

set ruler
set colorcolumn=81

set undolevels=1000
set backspace=indent,eol,start
set clipboard=unnamed

nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>
nnoremap <leader><leader> <c-^>
nnoremap <leader>b :buffers<CR>:buffer<Space>
nnoremap <leader>o o<ESC>0"_D
nnoremap <leader>O O<ESC>0"_D
vnoremap < <gv
vnoremap > >gv

