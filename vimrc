" Don't try to be compatible to VI.
set nocp

" Setup pathogen
silent! call pathogen#runtime_append_all_bundles()
silent! call pathogen#helptags()

" Default color scheme
color ir_black
set bg=dark

" General stuff
set number
set ruler
set hidden

" Swap files should not clutter the project directory
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Add a status bar
set laststatus=2

" Turn off the blinking cursor in normal mode
set gcr=n:blinkon0

" Standard file encoding
set encoding=utf-8

" Whitespace
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

" Nice text wrapping
set wrap
set wm=2
set textwidth=78
set formatprg=par\ -w78qrg
set linebreak

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildignore+=*.o,.git

" Key bindings
set backspace=indent,eol,start
let mapleader = ","
map <Leader>n :NERDTreeToggle<CR>

" Command-T
let g:CommandTMaxHeight=20

" Syntax highlighting
syntax on

" Filetype specific stuff
au FileType make set noexpandtab
filetype plugin indent on

" LaTeX
let g:tex_flavor='latex'
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'
if has("mac")
    let g:Tex_ViewRule_pdf = 'Skim'
endif

" Bubble lines (Unimpaired)
nmap <C-Up> [e
nmap <C-Down> ]e
vmap <C-Up> [egv
vmap <C-Down> ]egv

" 'Local' extensions to this file
if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif

