#! /bin/bash

function backup() {
    d=`date +%Y%m%d`
    timestamp=`data +%s`

    t="$d-$timestamp"

    if [ -f ~/.vimrc ]
    then
        mv ~/.vimrc ~/.vimrc_backup_$t
    fi

    if [ -f ~/.vimrc.local ]
    then
        mv ~/.vimrc.local ~/.vimrc.local_backup_$t
    fi

    if [ -f ~/.vimrc.bundle ]
    then
        mv ~/.vimrc.bundle ~/.vimrc.bundle_backup_$t
    fi

    if [ -d ~/.vim ]
    then
        mv ~/.vim ~/.vim_backup_$t
    fi
}

function copyVimDir() {
    tar zxf vim.tar.gz

    cp ./.vim ~/ -r
    cp ./.vimrc ~/
    cp ./.vimrc.local ./
    cp ./.vimrc.team ./
    cp ./.vimrc.bundle ./
}

function addAlias() {
    shell=`echo $SHELL`

    if [ $shell = "/bin/zsh" ]
    then
        cat alias.txt >> ~/.zshrc
        source ~/.zshrc
    fi
}

echo "=============== start backup =================="
backup
echo "==============================================="
echo "===============  start copy  =================="
copyVimDir
echo "==============================================="
echo "===============   add alias  =================="
addAlias
echo "==============================================="

