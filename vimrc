set nocompatible
call pathogen#infect()
syntax on

"set ofu=syntaxcomplete#Complete

set background=dark

"colorscheme solarized

set fileformats=unix,dos

"I fucking hate errorbells
set noerrorbells

set tabstop=2
set expandtab
set shiftwidth=2

set autoindent
set cindent

"set showcmd

set showmatch "show matchin paranthesis


set hidden "hide instead of close buffers, less hassle

set hlsearch "hilight search
set incsearch "show match while typing

filetype plugin indent on

set backupdir=~/.vim/backup,/tmp

"ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -f gl /usr/include/GL/  
"ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q --language-force=C++ -f qt /usr/include/Qt/ 

"set tags+=/home/engy/.vim/tags/qt4
"set tags+=/home/engy/.vim/tags/cpp
"set tags+=/home/engy/.vim/tags/currdir/tags
"map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <F4> :NERDTreeToggle<CR>

"change mapleader to , instead of \
let mapleader=","

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>



let g:NERDTreeDirArrows=0

nmap <F3> :TagbarToggle<CR>

nmap <leader>l :setlocal number!<CR>
nmap <leader>o :set paste!<CR>
nmap <leader>e :e#<CR>

nmap ; :CtrlPBuffer<CR>

nnoremap j gj
nnoremap k gk

inoremap jj <Esc>

"ctags
nnoremap <M-h> :tnext <CR>
nnoremap <M-l> :tprevious <CR>

nnoremap <M-j> <C-]>
nnoremap <M-k> >C-t>

set tags=./tags;/
