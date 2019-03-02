let g:vimDir = $HOME.'/.config/nvim'
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set number
set autoindent
filetype indent on

call plug#begin($HOME.'/.vim/plugins/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'elzr/vim-json'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'moll/vim-bbye'
Plug 'Chiel92/vim-autoformat'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'vim-syntastic/syntastic'
Plug 'vim-scripts/darktango.vim'
Plug 'vim-scripts/AutoComplPop'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-scripts/grep.vim'
call plug#end()
set background=dark
"colorscheme  solarized
colorscheme dracula
"formatting
syntax on
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set number
set autoindent
"set cursorline
filetype indent on
set hlsearch

noremap <Leader>f :Autoformat<CR>
noremap <Leader>t :NERDTreeToggle <Enter>

let g:airline_theme='dracula'

"keybindings
noremap <Leader>p :bprevious <Enter>
noremap <Leader>n :bnext <Enter>
noremap <Leader>q :Bdelet<CR>

"transpiling
autocmd BufWritePost *.coffee !coffee --no-header -bc %
autocmd BufWritePost *.pug !pug %
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['standard']
"let g:syntastic_javascript_standard_exec = 'standard'
"let g:syntastic_javascript_standard_generic = 1

let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

