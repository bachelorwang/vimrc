set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'rhysd/vim-clang-format'

call vundle#end()
filetype plugin indent on
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set clipboard=unnamedplus
nmap <C-K> :ClangFormat<CR>
