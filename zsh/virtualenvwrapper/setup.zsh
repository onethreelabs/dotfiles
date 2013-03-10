#!/bin/sh
export WORKON_HOME=~/Envs
systemInstall="/usr/local/bin/virtualenvwrapper.sh"
if [ -e $systemInstall ]
then
    echo "System virtualenvwrapper"
    source $systemInstall
fi
brewInstall="/usr/local/share/python/virtualenvwrapper.sh"
if [ -e $brewInstall ]
then
    source $brewInstall
fi

export PIP_VIRTUALENV_BASE=~/Envs
export VIRTUALENVWRAPPER_PYTHON=$(which python)
