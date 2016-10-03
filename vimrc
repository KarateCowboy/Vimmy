set hlsearch
set autoindent
set nowrap
set number
set shell=/bin/bash
set number
let maplocalleader = "\\"
let mapleader = "-"
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:python_host_prog = '/usr/bin/python'
map <C-n> :NERDTreeToggle<Enter>
map <C-b> :set invnumber<Enter>
map <C-h> :TMToggle<Enter>
map <C-s> :Tablisttoggle<Enter>
map <Leader>s :Search<Space>
map <Leader>e :CtrlPMRUFiles<Enter>
map <leader>c :!js2coffee % > %.coffee && rename -f 's/js\.//g' %.coffee<Enter>
set t_Co=256
syntax on
let g:tabman_side = 'right'
let g:tabman_width=40
set expandtab
map <c-f> :call JsBeautify()<cr>
set cursorline
set cursorcolumn
set tabstop=2
"set guifont=Ubuntu\ Mono\ 12
set guifont=Terminus\ \(TTF\)\ 12
set shiftwidth=2
set showmode " show mode at bottom of screen
set showmatch
set mat=5 " show matching brackets for 0.5 seconds
set clipboard+=unnamed " yank and copy to X clipboard
let  g:solarized_style     =   "dark" 
set guitablabel=%t
let g:rsenseHome = "/opt/rsense-0.3"
let g:rsenseUseOmniFunc = 1
set nocompatible
" tab navigation like firefox
 nnoremap <C-S-tab> :tabprevious<CR>
 nnoremap <C-tab>   :tabnext<CR>
 nnoremap <C-t>     :tabnew<CR>
 inoremap <C-S-tab> <Esc>:tabprevious<CR>i
 inoremap <C-tab>   <Esc>:tabnext<CR>i
 inoremap <C-t>     <Esc>:tabnew<CR>
filetype off " required!
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My Bundles here:
"
" original repos on github
Plugin 'flazz/vim-colorschemes'
Bundle 'scrooloose/nerdtree'
Bundle 'dag/vim-fish.git'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-cucumber.git'
Bundle 'kien/tabman.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'thomd/vim-jasmine.git'
Bundle 'vim-scripts/grep.vim.git'
Bundle 'vim-scripts/Colour-Sampler-Pack'
Bundle 'slim-template/vim-slim.git'
Bundle 'airblade/vim-gitgutter'
Bundle 'wavded/vim-stylus'
Bundle 'mustache/vim-mustache-handlebars'
"Bundle 'valloric/YouCompleteMe'
Bundle 'KurtPreston/vim-autoformat-rails'
Bundle 'digitaltoad/vim-jade'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'ScrollColors'
Bundle 'MultipleSearch'
Bundle 'kchmck/vim-coffee-script'
Bundle 'maksimr/vim-jsbeautify', { 'do' : 'git submodule update --init --recursive' }
Bundle 'elzr/vim-json'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'marijnh/tern_for_vim', { 'do' : 'npm install' }
Plugin 'jeetsukumaran/vim-buffergator'
" ...
call vundle#end()
highlight Cursor guifg=green guibg=black
highlight iCursor guifg=green guibg=black
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor-=i:blinkon0

"colorscheme molokai
colorscheme molokai_dark
"set background=dark
"colorscheme solarized
"colorscheme thor
autocmd BufWritePost *.coffee !coffee --no-header -bc %

