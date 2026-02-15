set nocompatible
set shell=/bin/bash
filetype off
set encoding=utf-8

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()

filetype plugin indent on
colorscheme catppuccin_mocha
set termguicolors 
syntax on

set expandtab
set shiftwidth=2
set tabstop=2
set autoindent
