#!/bin/bash

alias status='git status'
alias branches='git branch -vv -l --color'
alias grep='grep --color=auto'
alias ls='ls -GFh'
alias showcommitfiles='git diff-tree --no-commit-id --name-only -r'

export CLICOLOR=1
export LSCOLORS=BxGxExDxCxegedabagacad
export LS_COLORS=$LS_COLORS:'di=1;31:'

EDITOR=vim
export EDITOR

TERM="xterm-color"
export TERM

force_color_prompt=yes
color_prompt=yes
export PS1="\[\033[38;5;196m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;47m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;45m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\\$ \[$(tput sgr0)\]"

if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
fi
