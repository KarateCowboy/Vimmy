let g:vimDir = $HOME.'/.vim'
set expandtab
set tabstop=2
set number

call plug#begin($HOME.'/.vim/plugins/plugged')
Plug 'kien/ctrlp.vim'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-surround'
Plug 'elzr/vim-json'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'moll/vim-bbye'
Plug 'Chiel92/vim-autoformat'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
call plug#end()
colorscheme molokai
"formatting
syntax on
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set number
set autoindent
set t_Co=256
filetype indent on
set hlsearch
set cursorline
let g:ale_linters = {
      \   'javascript': ['standard'],
      \}
let g:ale_fixers = {'javascript': ['standard']}
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1

noremap <Leader>f :Autoformat<CR>

let g:airline_theme='base16-monokai'

"keybindings
noremap <Leader>p :bprevious <Enter>
noremap <Leader>n :bnext <Enter>
noremap <Leader>q :Bdelet<CR>

"transpiling
autocmd BufWritePost *.coffee !coffee --no-header -bc %
autocmd BufWritePost *.pug !pug %
