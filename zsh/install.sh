#!/bin/sh
if [ -e ~/.zshrc.dotfiles.backup ]
then
	echo "git backup exists"
else
	cp ~/.zshrc ~/.zshrc.dotfiles.backup
fi

rm ~/.zshrc
cp ~/.zshrc.dotfiles.backup ~/.zshrc

cat $DOTFILES_HOME/zsh/zshrc.partial >> ~/.zshrc