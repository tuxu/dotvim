This is the Vim configuration I am currently using with [MacVim].

Installation

    git clone git://github.com/tuxu/dotvim.git ~/.vim
    cd ~/.vim
    git submodule update --init

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Also, make sure to create a directory for Vim's backup and undo files:

    mkdir ~/.vim/backup
    mkdir ~/.vim/undo

Plugins are installed using Git submodules. To add one, type:

    cd ~/.vim
    git submodule add $scrip_git_url bundle/scriptname

[MacVim]: http://code.google.com/p/macvim/
