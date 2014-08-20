set hlsearch
set autoindent
set nowrap
set number
syntax on
set shell=/bin/bash
set number
map <C-n> :NERDTreeToggle<Enter>
map <C-b> :set invnumber<Enter>
map <C-h> :TMToggle<Enter>
map <C-s> :Tablisttoggle<Enter>
map <Leader>s :Search<Space>
set t_Co=256
let g:tabman_side = 'right'
let g:tabman_width=40
set expandtab
set tabstop=2
set guifont=Ubuntu\ Mono\ 10
set shiftwidth=2
set showmode " show mode at bottom of screen
set showmatch
set mat=5 " show matching brackets for 0.5 seconds
set clipboard+=unnamed " yank and copy to X clipboard
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

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
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
Bundle 'scrooloose/nerdtree'
Bundle 'wavded/vim-stylus'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'valloric/YouCompleteMe'
Bundle 'KurtPreston/vim-autoformat-rails'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'ScrollColors'
Bundle 'MultipleSearch'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...

colorscheme wombat256
filetype plugin indent on " required!
