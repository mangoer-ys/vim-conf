#! /bin/bash

VIMIDE=/usr/local/vimide
VIMDIR=~/.vim

if [ ! -d $VIMIDE ]
then
	sudo mkdir -p $VIMIDE
fi

sudo tar zxvf vimide.tar.gz -C $VIMIDE

if [ ! -d $VIMDIR ]
then
	mkdir -p $VIMDIR
fi

tar zxvf vim.tar.gz -C ~/

cp vimrc ~/.vimrc

sudo cat vj.txt >> ~/.bashrc
source ~/.bashrc
