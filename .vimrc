call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'rhysd/vim-clang-format'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
set encoding=utf-8
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set clipboard=unnamedplus

let mapleader=","
nnoremap <leader>f :ClangFormat<CR>
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>t :NERDTreeToggle<CR>

