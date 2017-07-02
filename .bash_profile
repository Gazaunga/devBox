#!/bin/bash

# Notes
NOTES_BASE_PATH=""
[ -d "$HOME/Documents/notes" ] && NOTES_BASE_PATH="$HOME/Documents/notes"
[ -d "$HOME/docs/notes" ]      && NOTES_BASE_PATH="$HOME/docs/notes"

# Load generic login-shell configuration
    source ~/.profile
    
    source ~/.bashrc
    
    setxkbmap -option caps:swapescape

if [ -e ~/bin/.scripts/lesspipe.sh ];
then
  export LESSOPEN='|~/bin/.scripts/lesspipe.sh %s'
fi

