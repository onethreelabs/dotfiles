#!/bin/sh
ZSH_THEME_GIT_PROMPT_PREFIX=" [%{$fg_bold[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}]"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

PROMPT='%{$fg_bold[magenta]%}%n%{$reset_color%}@%{$fg_bold[cyan]%}$(box_name)%{$reset_color%}:%{$fg_bold[green]%}%~%{$reset_color%}$(git_prompt_info)$ '
RPROMPT='%{$fg_bold[magenta]%}%?%{$reset_color%} %D %t'

# setup the prompt with pretty colors
setopt prompt_subst
