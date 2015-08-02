set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-vinegar'

Plug 'justinmk/vim-sneak'
Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'lyuts/vim-rtags'

Plug 'nathanaelkane/vim-indent-guides'
Plug 'wellle/targets.vim'
Plug 'scrooloose/syntastic'
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

Plug 'vim-scripts/moria'
Plug 'croaker/mustang-vim'

call plug#end()

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

let mapleader="\<Space>"

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

nmap <leader>l :setlocal number!<CR>
nmap <leader>o :set paste!<CR>
nmap <leader>e :e#<CR>

nnoremap j gj
nnoremap k gk

inoremap jj <Esc>

"ctags
nnoremap <M-h> :tnext <CR>
nnoremap <M-l> :tprevious <CR>

nnoremap <M-j> <C-]>
nnoremap <M-k> >C-t>

set tags=./tags;/

nmap ; :CtrlPBuffer<CR>

let g:UltiSnipsSnippetsDir="~/.vim/bundle/snippets/UltiSnips"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets = "<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

"tnoremap <Leader>t <C-\><C-n>

let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'

:set clipboard^=unnamed "adds unnamed to existing values
