set number
set shell=/bin/zsh
set nowritebackup
set nobackup
set noerrorbells
set cmdheight=2
set laststatus=2
set history=1000
set showmatch
set noswapfile
set clipboard=unnamed,unnamedplus
set hlsearch
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set ruler
set backspace=indent,eol,start

let mapleader = "\<Space>"
let maplocalleader="\\"

nnoremap j gj
nnoremap k gk
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>N :NERDTree<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

inoremap <Esc> <C-[>
inoremap <C-a> <Home>
inoremap <C-e> <End>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-n> <Down>
inoremap <C-p> <Up>
inoremap <C-h> <BS>
inoremap <C-d> <Del>
inoremap <C-k> <C-o>D<Right>
inoremap <C-u> <C-o>d^
inoremap <C-w> <C-o>db

syntax on

packloadall
silent! helptags ALL

