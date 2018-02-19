let g:vimDir = $HOME.'/.config/nvim'

call plug#begin($HOME.'/.config/nvim/plugins/plugged')

"Plug 'vim-scripts/ScrollColors'
Plug 'Valloric/YouCompleteMe'
Plug 'digitaltoad/vim-pug'
Plug 'rust-lang/rust.vim'
Plug 'bling/vim-airline'
Plug 'vim-dist/PaperColor.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
"Plug 'bronson/vim-trailing-whitespace'
Plug 'scrooloose/syntastic'
Plug 'junegunn/vim-easy-align'
Plug 'terryma/vim-multiple-cursors'
Plug 'maksimr/vim-jsbeautify'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'tpope/vim-surround'
Plug 'elzr/vim-json'
Plug 'othree/yajs.vim'
Plug 'othree/javascript-libraries-syntax.vim'

Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'scrooloose/nerdcommenter'
Plug 'moll/vim-bbye'
Plug 'vim-scripts/summerfruit256.vim'
Plug 'trusktr/seti.vim'
Plug 'flazz/vim-colorschemes'
Plug 'vim-scripts/summerfruit.vim'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
colorscheme molokai_dark

" [> Airline <]

" status line always opened
set laststatus=2

let g:airline#extensions#tabline#enabled = 1

let g:airline_theme='monokai'

" [> NERDTree <]

" nerdtree window resize
let g:NERDTreeWinSize = 35

" show hidden files
let g:NERDTreeShowHidden=0

" single click to open nodes
" let g:NERDTreeMouseMode=3

" ignored files
let g:NERDTreeIgnore=['\.swp$', '\~$']

autocmd BufWritePost *.coffee !coffee --no-header -bc %

set hlsearch
set autoindent
set ignorecase
set number
set expandtab
map <C-p> :CtrlP
set nowrap
let g:lucius_style="light"
set tabstop=2
set nocursorcolumn
set nocursorline
set hidden
map <Leader>b :bprevious <Enter>
map <Leader>n :bnext <Enter>
map <Leader>t :NERDTreeToggle<CR>
set guifont=Terminus\ \(TTF\)\ 12
set shiftwidth=2
highlight Cursor guifg=green guibg=black
highlight iCursor guifg=green guibg=black
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor-=i:blinkon0
noremap <Leader>q :Bdelet<CR>

