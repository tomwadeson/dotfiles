set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'godlygeek/tabular'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'kien/ctrlp.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

syntax enable
filetype plugin indent on

let mapleader = ' '

set background=dark
colorscheme solarized

set ruler
set number
set visualbell
set encoding=utf-8
set spelllang=en_gb
set hidden
set confirm
set swapfile
set dir=~/tmp

" Split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Buffers
nnoremap <C-Tab> :bnext<CR>
nnoremap <C-S-Tab> :bprevious<CR>

" Search
nnoremap / /\v
vnoremap / /\v
set incsearch
set ignorecase
set smartcase
set showmatch
set hlsearch
nnoremap <F3> :set hlsearch!<CR>

" Tabs
set autoindent
set tabstop=4 shiftwidth=4 expandtab

nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>o :NERDTreeToggle<CR>

" Move lines up/down
" ∆ == <A-j>
" ˚ == <A-k>
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" Tabularize (alignment)
nmap <leader>a= :Tab /=<CR>
vmap <leader>a= :Tab /=<CR>

" CtrlP
" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}
let g:ctrlp_working_path_mode = 'r'
nmap <leader>p :CtrlPMixed<cr>

" vim-airline
set laststatus=2
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1
