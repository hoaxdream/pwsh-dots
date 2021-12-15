" init autocmd
autocmd!
" set script encoding
scriptencoding utf-8
" stop loading config if it's tiny or small
if !1 | finish | endif

set nocompatible
set number relativenumber
syntax enable
set encoding=utf-8
set title
set autoindent
set background=dark
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set expandtab
set ignorecase
set smarttab

" indents
filetype plugin indent on
set shiftwidth=4
set tabstop=4
set ai
set si
set nowrap
