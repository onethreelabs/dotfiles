#!/bin/sh
if [ -e ~/.gitconfig.dotfiles.backup ]
then
	echo "git backup exists"
else
	cp ~/.gitconfig ~/.gitconfig.dotfiles.backup
fi

rm ~/.gitconfig
cp ~/.gitconfig.dotfiles.backup ~/.gitconfig

cat $DOTFILES_HOME/git/gitconfig.partial >> ~/.gitconfig
