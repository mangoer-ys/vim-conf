#! /bin/bash

VIMIDE=/usr/local/vimide/
VIMRC=~/.vimrc
VIM=~/.vim

if [ ! -d $VIMIDE ]
then
    sudo mkdir -p $VIMIDE
    echo "Create Vimide Dir"
else
    sudo rm -rf $VIMIDE/*
    echo "Rm Content of Vimide Dir"
fi

if [ -d $VIM ]
then
    rm -rf $VIM
fi

tar -zxf vim.tar.gz -C ~/
sudo tar -zxf vimide.tar.gz -C $VIMIDE

echo "UnZip Successfully"

cp vimrc $VIMRC
echo "Cp VimRC"

cat vj.txt >> ~/.bash_profile
echo "Add Alias"

source ~/.bash_profile
