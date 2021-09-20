call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'rhysd/vim-clang-format'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'vim-scripts/paredit.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
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

let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

let mapleader=","
let NERDSpaceDelims=1
let NERDCompactSexyComs=1
let NERDTreeShowHidden=1
nnoremap <leader>f :call CocAction('format')<CR>
nnoremap <leader>n :NERDTree<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>d :call CocAction('jumpDefinition', 'tabe')<CR>
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

source $VIMRUNTIME/menu.vim
set wildmenu
set wildcharm=<C-z>
nnoremap <C-m> :emenu <C-z>

