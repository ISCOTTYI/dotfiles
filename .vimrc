" --------
" MAPPINGS
" --------
" Leader key
let mapleader="\\"

" Search using very magic mode, no need to escape regex characters
nnoremap / /\v
vnoremap / /\v
" Format inner paragraph
map <leader>q gqip
inoremap jj <ESC>
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>
nnoremap <leader><leader> <c-^>
nnoremap <leader>b :buffers<CR>:buffer<Space>
nnoremap <leader>o o<ESC>0"_D
nnoremap <leader>O O<ESC>0"_D
vnoremap < <gv
vnoremap > >gv
" Move up/down editor lines
nnoremap j gj
nnoremap k gk
" --------

" Don't try to be vi compatible
set nocompatible

" Search through subdirectories
set path+=**

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)

" Turn on syntax highlighting
syntax on

" Security, checks start and end of file for file specific options. May execute
" arbitrary code
set modelines=0

" Show line numbers
set number
" set relativenumber

" Show file stats
set ruler

" Encoding
set encoding=utf-8
" language en_US.UTF-8

" 
" --------
" WHITESPACE AND INDENTATION
" --------
set nowrap
set showbreak=+++
set textwidth=80
set colorcolumn=81
" Format options
" t: Set text width to the value of textwidth.
" c: Auto-wrap comments using commentstring, inserting the current comment
" leader automatically.
" q: Allow formatting of comments with the gq command.
" r: In insert mode, when <Enter> is typed, insert the comment leader after the
" new line.
" n: Recognize numbered lists by checking for a number, optionally followed by a
" ‘.’, ‘:’, or ‘)’, at the start of a line.
" 1: When formatting text, don’t break a line after a one-letter word.
set formatoptions=tcqrn1
set formatoptions-=t
set expandtab
set tabstop=4 " number of spaces a tab occupies on screen
set shiftwidth=4 " number of spaces inserted for a tab
set softtabstop=-1 " how many spaces are inserted for a tab, use shiftwidth
set shiftround
" Indents
set autoindent " indent in newline
set smartindent " indent depending on code style

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬,lead:·
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" For plugins to load correctly
filetype plugin indent on
" autocmd FileType javascript setlocal shiftwidth=2 tabstop=2

" let python_highlight_all=1
" --------

" Rendering
set ttyfast

set mouse=a
set scrolloff=3
 
" --------
" SEARCH
" --------
set hlsearch
set smartcase
set incsearch
set ignorecase
set showmatch
" --------

" Show mode and currently active command
set showcmd
set showmode
set wildmenu
" Alsways show tabline
set showtabline=2
" Always show status bar
set laststatus=2

" Allow hidden buffers
set hidden

set undolevels=1000
set backspace=indent,eol,start
set clipboard=unnamed

" --------
" COLORSCHEME
" --------
set t_Co=256
set background=dark
let g:onedark_termcolors=256
let g:onedark_termtrans=1
" Don't need this: load colorscheme ?
colorscheme onedark
" --------
