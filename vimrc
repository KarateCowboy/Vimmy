
syntax on
colorscheme leo 
map <C-n> :NERDTreeToggle<Enter>
set number
map <C-b> :set invnumber<Enter>
set t_Co=256
set hlsearch
set expandtab
set tabstop=2
set shiftwidth=2


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
