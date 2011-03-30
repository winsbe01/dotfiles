" winsbe01's .vimrc
"
" lots of the inspiraiton for this was taken from here:
"   http://stevelosh.com/blog/2010/09/coming-home-to-vim/
" millions of thanks to Steve Losh for the great read

filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set nocompatible

" Fix a security issue in 7.3
set modelines=0

" Tabs and spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" General Options
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber

" Leader key
let mapleader = ","

" Search Options
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" Long lines
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Using vim correctly means no arrows!
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Save yourself from hitting 'help' all the time
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" One less key to hit when saving
nnoremap ; :

" Autosave everytime we switch off the window
au FocusLost * :wa

" Save ourselves from constantly hitting escape
" use 'jj' instead
inoremap jj <ESC>

" Easily do a vertical split with ,v
nnoremap <leader>v <C-w>v<C-w>l

nmap <leader><tab> :Sscratch<cr><C-W>x<C-j>:resize 15<cr>
set background=dark
set noerrorbells
set wrapscan
syntax on
