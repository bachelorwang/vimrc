call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'rhysd/vim-clang-format'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'vim-scripts/paredit.vim'
call plug#end()
set encoding=utf-8
set number
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set clipboard=unnamedplus
highlight CocFloating ctermbg=Black

let g:paredit_electric_return=0

let mapleader=","
let NERDSpaceDelims=1
let NERDCompactSexyComs=1
let NERDTreeShowHidden=1
nnoremap <leader>f :call CocAction('format')<CR>
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>d :call CocAction('jumpDefinition', 'tabe')<CR>
inoremap <silent><expr> <TAB> pumvisible() ? "\<TAB>" : coc#refresh()

source $VIMRUNTIME/menu.vim
set wildmenu
set wildcharm=<C-z>
nnoremap <C-m> :emenu <C-z>

