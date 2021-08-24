language en_US

set hidden
set nowrap
set ruler
set mouse=a
set t_Co=256
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set autoindent
set cursorline
set number
set relativenumber
set showtabline=2
set clipboard=unnamedplus " Copy to system clipboard by default

inoremap jj <ESC>
inoremap jk <ESC>
inoremap kj <ESC>
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
" Better tabbing
vnoremap < <gv
vnoremap > >gv
let mapleader=","

" VimPlug install:
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"
" Use :PlugInstall to install plugins
"
call plug#begin()

Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

syntax enable
colorscheme dracula

