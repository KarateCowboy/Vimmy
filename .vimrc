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
let g:tabman_side = 'right'
let g:tabman_width=40
set expandtab
set shiftwidth=2
set t_Co=256            " set 256 color
set showmode            " show mode at bottom of screen
set showmatch
set mat=5               " show matching brackets for 0.5 seconds
set clipboard+=unnamed  " yank and copy to X clipboard
set guitablabel=%t
set foldenable
let g:rsenseHome = "/opt/rsense-0.3"
let g:rsenseUseOmniFunc = 1
