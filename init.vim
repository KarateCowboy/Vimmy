let g:vimDir = $HOME.'/.config/nvim'
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set number
set autoindent
filetype indent on

call plug#begin($HOME.'/.config/nvim/plugins/plugged')
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
"Plug 'vim-scripts/AutoComplPop'
Plug 'fatih/molokai'
Plug 'nightsense/rusticated'
Plug 'vim-scripts/grep.vim'
Plug 'flazz/vim-colorschemes'
Plug 'nightsense/cosmic_latte'
Plug 'lmintmate/blue-mood-vim'
Plug 'tpope/vim-endwise'
Plug 'ervandew/supertab'
Plug 'vim-scripts/ScrollColors'
Plug 'NLKNguyen/papercolor-theme'
Plug 'luochen1990/rainbow'
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/deoplete.nvim'
call plug#end()
let g:deoplete#enable_at_startup = 1
"colorscheme  summerfruit256
"colorscheme dracula
"colorscheme cobalt2
"colorscheme PaperColor
"colorscheme solarized8_light_flat
colorscheme afterglow
"set background=light
"colorscheme blue-mood
"formatting
syntax on
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set number
set autoindent
set cursorline
filetype indent on
set hlsearch

set guifont=Terminus\ (TTF)\ 16
noremap <Leader>f :Autoformat<CR>
noremap <Leader>t :NERDTreeToggle <Enter>

let g:airline_theme='blue-mood'
let g:rainbow_active = 1

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

let g:autoformat_autoindent=0
let g:autoformat_retab=0
let g:autoformat_remove_trailing_spaces=0
let g:solarized_degrade=1
let g:rainbow_active = 1
set hidden
