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
Plug 'Valloric/YouCompleteMe',                    { 'commit' : 'ddf18cc6ec3bb0108bb89ac366fd74394815f2c6', 'do': function('InstallYCM') }
Plug 'bling/vim-airline',                         { 'commit' : '89646038445ccfefc00724a9a860db2cbc4f1e70', 'do' : $HOME.'/.config/nvim/fonts/install' }
Plug 'vim-dist/PaperColor.vim',                   { 'commit' : '9162696192a3c965d1bddef9b8500e5bc3e7c354' }
Plug 'tpope/vim-fugitive',                        { 'commit' : 'aac85a268e89a6c8be79341e130ac90256fadbd6' }
Plug 'airblade/vim-gitgutter',                    { 'commit' : '297678a08da0c2d1819d6cb98504f8a843395456' }
Plug 'editorconfig/editorconfig-vim',             { 'commit' : 'a459b8cfef00100da40fd69c8ae92c4d1e63e1d2' }
"Plug 'bronson/vim-trailing-whitespace',           { 'commit' : '733fb64337b6da4a51c85a43450cd620d8b617b5' }
Plug 'scrooloose/syntastic',                      { 'commit' : '6ffba7395c562e152cb84bc8f7906de2b1ed0b8a' }
Plug 'junegunn/vim-easy-align',                   { 'commit' : '0cb6b98fc155717b0a56c110551ac57d1d951ddb' }
Plug 'terryma/vim-multiple-cursors',              { 'commit' : '51d0717f63cc231f11b4b63ee5b611f589dce1b3' }
Plug 'maksimr/vim-jsbeautify',                    { 'commit' : 'caffda66a2a8852ee132f95291115af67370c5e7', 'do' : 'git submodule update --init --recursive && npm install' }
Plug 'maxbrunsfeld/vim-yankstack',                { 'commit' : '157a659c1b101c899935d961774fb5c8f0775370' }
Plug 'tpope/vim-surround',                        { 'commit' : 'e49d6c2459e0f5569ff2d533b4df995dd7f98313'}
Plug 'elzr/vim-json',                             { 'commit' : 'f5e3181d0b33a9c51377bb7ea8492feddca8b503'}
Plug 'othree/yajs.vim',                           { 'commit' : '138fa604d06d4e975c16d616c3c8a82d555c79fe'}
Plug 'othree/javascript-libraries-syntax.vim',    { 'commit' : '07293176a2c8f088189ff27382fa57c218a5b9a3'}

Plug 'scrooloose/nerdtree',                       { 'commit' : '334fb0e68797cf56d17db42bf56f39030f226cf8' } | Plug 'https://gist.github.com/1f40e70e615f2fa2212bf5423662277d.git', { 'dir' : g:vimDir . '/nerdtree_plugin' }
Plug 'kien/ctrlp.vim'
Plug 'kchmck/vim-coffee-script'
Plug 'scrooloose/nerdcommenter',                  { 'commit' : '97cb982f1f0d0631b34b71b065e162916bee4036' }
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
colorscheme softbluev2

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
