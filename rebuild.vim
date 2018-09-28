let g:vimDir = $HOME.'/.vim'
set expandtab
set tabstop=2
set number

call plug#begin($HOME.'/.vim/plugins/plugged')
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-surround'
Plug 'elzr/vim-json'
Plug 'vim-airline/vim-airline'

call plug#end()
colorscheme molokai

let g:airline_theme='monokai'

