" Don't try to be compatible to VI.
set nocp

" Setup pathogen
filetype off
silent! call pathogen#runtime_append_all_bundles()
silent! call pathogen#helptags()

" Default color scheme
color ir_black
set bg=dark

" General stuff
set number
set ruler
set hidden
set showcmd
set autoread
set scrolloff=3
set visualbell t_vb=
set ttyfast

" Swap files should not clutter the project directory
set backupdir=~/.vim/backup
set directory=~/.vim/backup

" Features requiring Vim >= 7.3
if v:version > 702
    " Relative line numbers :)
    set relativenumber
    " Save undo history
    set undofile
endif

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
set listchars=tab:▸\ ,eol:¬

" Indentation
set autoindent
set smartindent

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
set gdefault
set showmatch

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,.git

" Key bindings
set backspace=indent,eol,start
let mapleader = ","
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>g :GundoToggle<CR>
" Unhighlight last search
nnoremap <Leader><Space> :noh<CR>
nnoremap <Leader>a :Ack
" Re-hardwrap current paragraph
nnoremap <Leader>q gqip
" Reselect pasted text
nnoremap <Leader>v V`]
" Strip all whitespaces in the current file
nnoremap <Leader>W :%s/\s\+$//<CR>:let @/=''<CR>
" Open split window and switch to it
nnoremap <Leader>w <C-w>s<C-w>j
" Navigating split windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Command-T
let g:CommandTMaxHeight=20

" Syntax highlighting
syntax on

" Filetype specific stuff
au FileType make set noexpandtab
filetype plugin indent on

" LaTeX
let g:tex_flavor='latex'
let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 -interaction=nonstopmode $*'
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

