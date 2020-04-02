#!/bin/bash

### Aliases ###
alias grep='grep --color=auto'
alias ls='ls -GFh'

### Git Aliases ###
alias status='git status'
alias branches='git branch -vv -l --color'
alias showcommitfiles='git diff-tree --no-commit-id --name-only -r'
alias showremotebranches='git ls-remote --heads origin'

# History accross tabs
export HISTSIZE=1000000
export HISTFILESIZE=10000000
# Avoid duplicates
HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend
# After each command, append to the history file and reread it
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

### Colours ###
export CLICOLOR=1
export LSCOLORS=BxGxExDxCxegedabagacad
export LS_COLORS=$LS_COLORS:'di=1;31:'
export TERM="xterm-color"

force_color_prompt=yes
color_prompt=yes
export PS1="\[\033[38;5;196m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;47m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;45m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\\$ \[$(tput sgr0)\]"

export EDITOR=vim

if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

if [ -f ~/.git-prompt.sh ]; then
  source ~/.git-prompt.sh
fi
