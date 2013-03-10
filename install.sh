#!/bin/sh
# for all directories run their install.sh
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
DOTFILES_HOME="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

for sub_dir in $DOTFILES_HOME/*/; do 
	source $sub_dir/install.sh
done
