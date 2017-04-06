#!/bin/bash

alias status='git status'
alias branches='git branch -vv -l --color'
alias grep='grep --color'
alias showcommitfiles='git diff-tree --no-commit-id --name-only -r'

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -h'

EDITOR=vim
export EDITOR

export TERM="xterm-color"
PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '

if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
fi
