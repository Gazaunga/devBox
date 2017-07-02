#!/bin/bash

# Load generic login-shell configuration
    source ~/.profile
    
    source ~/.bashrc
    
    setxkbmap -option caps:swapescape

if [ -e ~/bin/.scripts/lesspipe.sh ];
then
  export LESSOPEN='|~/bin/.scripts/lesspipe.sh %s'
fi
