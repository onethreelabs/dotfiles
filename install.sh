#!/bin/sh
# for all directories run their install.sh
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
DOTFILES_HOME="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

for sub_dir in $DOTFILES_HOME/*/; do 
	if [ -f $sub_dir/install.sh ]; then
		source $sub_dir/install.sh
	fi
done
