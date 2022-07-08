#! /bin/bash

function backup() {
    d=`date +%Y%m%d`
    timestamp=`date +%s`

    t="$d-$timestamp"

    if [ -f ~/.vimrc ]
    then
        mv ~/.vimrc ~/.vimrc_backup_$t
    fi

    if [ -f ~/.vimrc.common ]
    then
        mv ~/.vimrc.common ~/.vimrc.common_backup_$t
    fi

    if [ -f ~/.vimrc.bundles ]
    then
        mv ~/.vimrc.bundles ~/.vimrc.bundles_backup_$t
    fi

    if [ -f ~/.vimrc.keymap ]
    then
        mv ~/.vimrc.keymap ~/.vimrc.keymap_backup_$t
    fi

    if [ -d ~/.vim ]
    then
        mv ~/.vim ~/.vim_backup_$t
    fi
}

function install_plugin() {
    cp .vimrc ~/.vimrc
    cp .vimrc.common ~/.vimrc.common
    cp .vimrc.keymap ~/.vimrc.keymap
    cp .vimrc.bundles ~/.vimrc.bundles

    mkdir -p ~/.vim/bundle
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

    vim +PluginInstall +qall
}

function add_alias() {
    shell=`echo $SHELL`

    if [ $shell = "/bin/zsh" ]
    then
        cat alias.txt >> ~/.zshrc
        source ~/.zshrc
    fi

    if [ $shell = "/bin/bash" ]
    then
        cat alias.txt >> ~/.bashrc
        source ~/.bashrc
    fi
}

function clean() {
    rm -rf ./.vim
}

echo "=============== start backup =================="
backup
echo "==============================================="
echo "===========  install vim plugin  =============="
install_plugin
echo "==============================================="
echo "===============   add alias  =================="
add_alias
clean
echo "==============================================="
echo "=============== enjoy vim ide ================="
