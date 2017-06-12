#!/bin/bash

# Source global definitions
[ -f /etc/bashrc ] && source /etc/bashrc

[ -f ~/.bash_alias ] && source ~/.bash_alias

[ -f ~/.bash_env ] && source ~/.bash_env

[ -f ~/.bash_functions ] && source ~/.bash_functions

[ -f ~/bin/.scripts/utils.sh ] && source ~/bin/.scripts/utils.sh

[ -f ~/liquidprompt/liquidprompt ] && source ~/liquidprompt/liquidprompt

export XDG_CONFIG_HOME=$HOME/.config

# put ~/bin first on PATH
if [ -d "$HOME/bin" ]; then
    PATH="$HOME/bin:$PATH"
fi

# Auto cd
shopt -s autocd

# Auto-correct misspelled directories
shopt -s dirspell direxpand

# Check the window size after each command and, if necessary,
# Update the values of LINES and COLUMNS.
shopt -s checkwinsize

# The pattern "**" used in a pathname expansion context will
# Match all files and zero or more directories and subdirectories.
shopt -s globstar

# Extended pattern matching features are enabled
shopt -s extglob

# Include filenames beginning with a '.' in the results of pathname expansions
shopt -s dotglob

# Make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# Reclaim Ctrl-S and Ctrl-Q used for suspend/resume and use it for modern mapppings
stty -hupcl -ixon -ixoff
stty stop undef
stty susp undef

if [ "$TERM" = "screen" ]; then
    export TERM=screen-256color
fi

#PATHS="
#/usr/local/bin
#/usr/local/sbin
#/usr/local/share/python
#$HOME/.rbenv/bin
#$HOME/.rvm/bin
#$HOME/.local/bin
#"
#old_path=$PATH
#for path in $PATHS; do
#    new_path=$new_path:$path
#done
#export PATH=${new_path:1}:$old_path
