" General settings
set cursorline
set columns=100

" Get rid of the toolbar
set guioptions-=T

" Default color scheme
set bg=dark
color jellybeans

" Font
if has("mac")
    set guifont=Inconsolata:h12
endif

if has("gui_macvim")
    " Make the window slightly transparent
    set transp=1

    " Cmd-T for CommandT
    macmenu &File.New\ Tab key=<D-T>
    map <D-t> :CommandT<CR>
    imap <D-t> :CommandT<CR>

    " ConqueTerm for bash and python
    map <D-e> :ConqueTerm bash --login<CR>
    map <D-i> :ConqueTerm ipython<CR>

    " Cmd-Return to toggle fullscreen
    set fuoptions=maxhorz,maxvert
    macmenu Window.Toggle\ Full\ Screen\ Mode key=<D-CR>

    " Tab switching
    map  <D-0> 0gt
    imap <D-0> <Esc>0gt
    map  <D-1> 1gt
    imap <D-1> <Esc>1gt
    map  <D-2> 2gt
    imap <D-2> <Esc>2gt
    map  <D-3> 3gt
    imap <D-3> <Esc>3gt
    map  <D-4> 4gt
    imap <D-4> <Esc>4gt
    map  <D-5> 5gt
    imap <D-5> <Esc>5gt
    map  <D-6> 6gt
    imap <D-6> <Esc>6gt
    map  <D-7> 7gt
    imap <D-7> <Esc>7gt
    map  <D-8> 8gt
    imap <D-8> <Esc>8gt
    map  <D-9> 9gt
    imap <D-9> <Esc>9gt
endif

if filereadable(expand("~/.gvimrc.local"))
    source ~/.gvimrc.local
endif
