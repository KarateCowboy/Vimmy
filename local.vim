set hlsearch
set autoindent
set ignorecase
set number
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
let g:vimDir = $HOME.'/.config/nvim'
function! InstallYCM(info)
  if a:info.status == 'installed' || a:info.force
    !./install.py
    !cd ./third_party/ycmd/third_party/tern_runtime && npm install
  endif
endfunction

call plug#begin($HOME.'/.config/nvim/plugins/plugged')

"Plug 'vim-scripts/ScrollColors'
Plug 'Valloric/YouCompleteMe'
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
"Plug 'jonathanfilip/vim-lucius'
Plug 'moll/vim-bbye'
"Plug 'jonathanfilip/vim-lucius'
Plug 'vim-scripts/summerfruit256.vim'
"Plug 'digitaltoad/vim-pug'
Plug 'trusktr/seti.vim'
Plug 'flazz/vim-colorschemes'
Plug 'vim-scripts/summerfruit.vim'
Plug 'vim-airline/vim-airline-themes'
call plug#end()
colorscheme bluegreen

" [> Airline <]

" status line always opened
set laststatus=2

let g:airline#extensions#tabline#enabled = 1

"  powerline font
let g:airline_powerline_fonts=1

let g:airline_theme='light'

" [> NERDTree <]

" on vim enter opens nerd tree
function! OpenNerdTree()
    let s:exclude = ['COMMIT_EDITMSG', 'MERGE_MSG']
    if index(s:exclude, expand('%:t')) < 0
        NERDTreeFind
        exec "normal! \<c-w>\<c-w>"
    endif
endfunction
autocmd VimEnter * call OpenNerdTree()


" nerdtree window resize
let g:NERDTreeWinSize = 35

" show hidden files
let g:NERDTreeShowHidden=1

" single click to open nodes
" let g:NERDTreeMouseMode=3

" ignored files
let g:NERDTreeIgnore=['\.swp$', '\~$']

" helps quiting when there's no buffers left but NerdTree
function! CheckLeftBuffers()
  if tabpagenr('$') == 1
    let i = 1
    while i <= winnr('$')
      if getbufvar(winbufnr(i), '&buftype') == 'help' ||
          \ getbufvar(winbufnr(i), '&buftype') == 'quickfix' ||
          \ exists('t:NERDTreeBufName') &&
          \   bufname(winbufnr(i)) == t:NERDTreeBufName ||
          \ bufname(winbufnr(i)) == '__Tag_List__'
        let i += 1
      else
        break
      endif
    endwhile
    if i == winnr('$') + 1
      qall
    endif
    unlet i
  endif
endfunction
autocmd BufEnter * call CheckLeftBuffers()
