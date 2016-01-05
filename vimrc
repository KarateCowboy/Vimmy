set hlsearch
set autoindent
set nowrap
set number
set shell=/bin/bash
set number
let maplocalleader = "\\"
let mapleader = "-"
map <C-n> :NERDTreeToggle<Enter>
map <C-b> :set invnumber<Enter>
map <C-h> :TMToggle<Enter>
map <C-s> :Tablisttoggle<Enter>
map <Leader>s :Search<Space>
map <leader>c :!js2coffee --compat % > %.coffee<Enter>
set t_Co=256
syntax on
let g:tabman_side = 'right'
let g:tabman_width=40
set expandtab
set cursorline
set tabstop=2
set guifont=Monospace\ 10
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
Bundle 'luisgabriel/vim-qml'
Bundle 'vim-scripts/Colour-Sampler-Pack'
Bundle 'slim-template/vim-slim.git'
Bundle 'wavded/vim-stylus'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'valloric/YouCompleteMe'
Bundle 'KurtPreston/vim-autoformat-rails'
Bundle 'digitaltoad/vim-jade'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'ScrollColors'
Bundle 'MultipleSearch'
Bundle 'kchmck/vim-coffee-script'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...
call vundle#end()

colorscheme molokai
autocmd BufWritePost *.coffee !coffee --no-header -bc %

