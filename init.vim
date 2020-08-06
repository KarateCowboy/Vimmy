filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
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
"Plug 'vim-scripts/AutoComplPop'
Plug 'fatih/molokai'
Plug 'nightsense/rusticated'
Plug 'vim-scripts/grep.vim'
Plug 'tpope/vim-endwise'
Plug 'ervandew/supertab'
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/deoplete.nvim'
Plug 'hzchirs/vim-material'
Plug 'w0rp/ale'
Plug 'gertjanreynaert/cobalt2-vim-theme'
Plug 'reasonml-editor/vim-reason-plus'
call plug#end()
let g:deoplete#enable_at_startup = 1
"colorscheme  summerfruit256
"colorscheme dracula
colorscheme cobalt2
"colorscheme PaperColor
"colorscheme solarized8_light_flat
"let g:material_style='palenight'
"colorscheme vim-material
"set background=dark
"colorscheme blue-mood
"formatting
syntax on
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set number
set autoindent
filetype indent on
set hlsearch

set guifont=Terminus\ (TTF)\ 16
noremap <Leader>f :Autoformat<CR>
noremap <Leader>t :NERDTreeToggle <Enter>

let g:airline_theme='cobalt2'
let g:airline#extensions#tabline#enabled = 1
set laststatus=2

let g:rainbow_active = 1

"keybindings
noremap <Leader>p :bprevious <Enter>
noremap <Leader>n :bnext <Enter>
noremap <Leader>q :Bdelet<CR>

"transpiling
autocmd BufWritePost *.coffee !coffee --no-header -bc %
autocmd BufWritePost *.pug !pug %

let g:autoformat_autoindent=0
let g:autoformat_retab=0
let g:autoformat_remove_trailing_spaces=0
let g:rainbow_active = 1
set hidden

let g:ale_linters = {
      \   'javascript': ['standard'],
      \}
let g:ale_fixers = {'javascript': ['standard']}

let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1

"for truecolor support
set t_8f=^[[38;2;%lu;%lu;%lum
set t_8b=^[[48;2;%lu;%lu;%lum
"set termguicolors
colorscheme cobalt2 
