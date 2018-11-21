let g:vimDir = $HOME.'/.config/nvim'
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set number
set autoindent
set t_Co=256
filetype indent on

call plug#begin($HOME.'/.vim/plugins/plugged')
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-surround'
Plug 'elzr/vim-json'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'Chiel92/vim-autoformat'
call plug#end()
colorscheme summerfruit256

let g:airline_theme='cobalt2'

autocmd BufWritePost *.coffee !coffee --no-header -bc %
let g:ale_linters = {
\   'javascript': ['standard'],
\}
let g:ale_fixers = {'javascript': ['standard']}
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1

syntax on
au BufWrite * :Autoformat
