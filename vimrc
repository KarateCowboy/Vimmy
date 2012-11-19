set hlsearch
set autoindent
set nowrap
set number
syntax on
colorscheme leo 
set number
map <C-n> :NERDTreeToggle<Enter>
map <C-b> :set invnumber<Enter>
map <C-h> :TMToggle<Enter>
set t_Co=256
let g:tabman_side = 'right'
let g:tabman_width=40
set expandtab
set tabstop=2
set shiftwidth=2
set showmode            " show mode at bottom of screen
set showmatch
set mat=5               " show matching brackets for 0.5 seconds
set clipboard+=unnamed  " yank and copy to X clipboard
set guitablabel=%t
let g:rsenseHome = "/opt/rsense-0.3"
let g:rsenseUseOmniFunc = 1
set nocompatible
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'pangloss/vim-javascript'
Bundle 'thomd/vim-jasmine.git'
Bundle 'vim-scripts/grep.vim.git'
 " vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'ScrollColors'
Bundle 'MultipleSearch'
Bundle 'SuperTab'
Bundle 'NERDTree'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!

