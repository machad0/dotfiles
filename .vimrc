set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'vim-syntastic/syntastic'
    Bundle 'kien/ctrlp.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'sheerun/vim-polyglot'
    Plugin 'tpope/vim-commentary.git'
    Plugin 'whatyouhide/vim-gotham'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'othree/yajs.vim'    
    Plugin 'othree/javascript-libraries-syntax.vim'
    Plugin 'Yggdroot/indentLine'
    Plugin 'jiangmiao/auto-pairs'
    Plugin 'prettier/vim-prettier', {
    \ 'do': 'yarn install',
    \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
call vundle#end()

set t_Co=256
set background=dark
colorscheme gotham256
syntax enable
set ruler

let g:prettier#autoformat = 0

set encoding=utf8

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql PrettierAsync

let g:airline_powerline_fonts= 1
let g:gotham_airline_emphasised_insert = 0

let g:used_javascript_libs = 'underscore,socketio,express,ramda,chai,react,jasmine'

set backspace=indent,eol,start
set clipboard=unnamed
set shiftwidth=2 
set tabstop=2
set expandtab 
filetype plugin indent on
set number 
set numberwidth=3
let g:indentLine_color_term = 239
set showcmd
set autoread
set hlsearch
set ignorecase
set smartcase
set cursorline
set hidden
set nobackup
set nowritebackup
set noswapfile
set fileformats=unix,dos,mac

set lazyredraw
set synmaxcol=128

set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
let g:ctrlp_custom_ignore = {
 	\ 'dir':  'node_modules\|DS_Store\|git\|bower_components',
 	\ 'file': '\v\.(exe|so|dll)$',
 	\ }

set title
autocmd StdinReadPre * let s:std_in=1
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['standard']

map <C-n> :NERDTreeToggle<CR>
map <C-k> :Commentary<CR>
map <C-t> :tabnew<CR>
