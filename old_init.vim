language en_US

set hidden
set nowrap
set ruler
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey
set guicursor=i:block
set mouse=a
set t_Co=256
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
set autoindent
set cursorline
set scrolloff=8
set nohlsearch
set number
set relativenumber
set signcolumn=yes
set showtabline=2
set clipboard=unnamedplus " Copy to system clipboard by default
set guitablabel=\[%N\]\ %t\ %M " Tabnumber, filename and modified in tabline

"""""""""""""
" Keybindings
"
"""""""""""""

" Leader key
nnoremap <SPACE> <Nop>
let mapleader=" "

" Escape insert mode with jj
inoremap jj <ESC>

" <leader> twice goes to last buffer, <TAB> and <S-TAB> cycle buffers
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>
nnoremap <leader><leader> <c-^>

" Better tabbing
vnoremap < <gv
vnoremap > >gv
" just type buffer number and switch there
nnoremap <Leader>b :buffers<CR>:buffer<Space>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" VimPlug install:
" sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
"
" Use :PlugInstall to install plugins
"
call plug#begin()

" telescope fuzzy finder
Plug 'nvim-telescope/telescope.nvim'

" airline status bar
Plug 'vim-airline/vim-airline'

" theme
Plug 'chriskempson/base16-vim'
" Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

" activate colortheme and syntax highlighting
colorscheme base16-onedark
" let base16colorspace=256
set termguicolors
syntax enable

