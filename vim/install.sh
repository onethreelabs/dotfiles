#!/bin/sh
rm ~/.vim
rm ~/.vimrc
ln -s $DOTFILES_HOME/vim ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc

mkdir ~/tmp
mkdir ~/tmp/vim
mkdir ~/tmp/vim/backup
mkdir ~/tmp/vim/swap

git submodule update --init
