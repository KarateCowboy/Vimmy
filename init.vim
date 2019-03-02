let g:vimDir = $HOME.'/.vim'
set expandtab
set tabstop=2
set number
set hlsearch
set cursorline
set shiftwidth=2
syntax on
set smartindent

call plug#begin($HOME.'/.vim/plugins/plugged')
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-surround'
Plug 'elzr/vim-json'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'

" colors
Plug 'whzup/greent'
Plug 'tjammer/blayu'
Plug 'rudrab/vim-coogle'
Plug 'vim-scripts/oceanlight'
Plug 'vim-scripts/Fruidle'
Plug 'Siphalor/vim-atomified'
Plug 'markvincze/panda-vim'
Plug 'markvincze/panda-vim'
call plug#end()

let g:airline_theme='cobalt2'

let g:ale_linters = {
\   'javascript': ['standard'],
\}
let g:ale_fixers = {'javascript': ['standard']}

let g:ale_lint_on_save=1
let g:ale_fix_on_save=1
autocmd BufWritePost *.coffee !coffee --no-header -bc %
colorscheme panda

