set nocompatible
set shell=/bin/bash
filetype off
set encoding=utf-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
call vundle#end()
filetype plugin indent on

colorscheme catppuccin_mocha
set termguicolors 
syntax on
set number relativenumber
set cursorline
highlight LineNr guifg=#9399b2
highlight CursorLineNr guifg=#f9e2af

set expandtab
set shiftwidth=2
set tabstop=2
set autoindent
