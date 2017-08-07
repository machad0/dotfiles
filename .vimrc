set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'vim-syntastic/syntastic'
    " Plugin 'w0rp/ale'
    Bundle 'kien/ctrlp.vim'
    Plugin 'scrooloose/nerdtree'
    Plugin 'sheerun/vim-polyglot'
    Plugin 'tpope/vim-commentary.git'
    Plugin 'mhartington/oceanic-next'    
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'othree/yajs.vim'    
    Plugin 'othree/javascript-libraries-syntax.vim'
    Plugin 'Yggdroot/indentLine'
call vundle#end()

"COLORSCHEME"
set t_Co=256
set background=dark
colorscheme OceanicNext
syntax enable
set ruler
let g:lightline = { 'colorscheme': 'oceanicnext' }


if (has("termguicolors"))
set termguicolors
endif


"FONTS AND ENCODING"
set encoding=utf8

"AIRLINE CONFIG
let g:airline_powerline_fonts=1
let g:airline_theme='oceanicnext'

"JAVASCRIPT LIBRARIES"
let g:used_javascript_libs = 'underscore,angularjs,angularui,socketio,express'

"EXTRA CONFIG"
set backspace=indent,eol,start
set clipboard=unnamed
set shiftwidth=2 " Indentation 2 spaces
set tabstop=2
set expandtab " Conrert tabs to spaces
filetype plugin indent on
set number " Show line number
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

"Trying to speed up vim"
set lazyredraw
set synmaxcol=128

" Enable mouse
if has('mouse')
    set mouse=a
endif


" CtrlP
set wildignore+=*/.git/*
let g:ctrlp_custom_ignore = {
 	\ 'dir':  'node_modules\|DS_Store\|git\|bower_components',
 	\ 'file': '\v\.(exe|so|dll)$',
 	\ }

" Show the filename in the window titlebar
set title
autocmd StdinReadPre * let s:std_in=1
autocmd vimenter * NERDTree
" Jump to the main window.
autocmd VimEnter * wincmd p
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Set Syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['standard']

map <C-n> :NERDTreeToggle<CR>
map <C-k> :Commentary<CR>
map <C-t> :tabnew<CR>
