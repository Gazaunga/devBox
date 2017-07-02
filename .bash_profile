#!/bin/bash

# Load generic login-shell configuration
    source ~/.profile
    
    source ~/.bashrc
    
    setxkbmap -option caps:swapescape

if [ -e ~/bin/.scripts/lesspipe.sh ];
then
  export LESSOPEN='|~/bin/.scripts/lesspipe.sh %s'
fi

## Todo Setup ##

# Notes
NOTES_BASE_PATH=""
[ -d "$HOME/Documents/notes" ] && NOTES_BASE_PATH="$HOME/Documents/notes"
[ -d "$HOME/docs/notes" ]      && NOTES_BASE_PATH="$HOME/docs/notes"

if [ -n "NOTES_BASE_PATH" ]
then
  alias todo="(cd $NOTES_BASE_PATH; nvim todo.txt)"
  alias lstodo="rg --no-line-number ' *(\[.\].*\*)$' $NOTES_BASE_PATH/notes/todo.txt --replace '\$1' | sort"
  
  # Daily journal
  # Currently set to a file per month, uncomment to make a file per day
  function journal() {
    # today=$(date +"%m-%d-%y")
    thismonth=$(date +"%m-%y")
    # [ ! -f $file ] && echo "# $today" > $file
    (cd $NOTES_BASE_PATH; nvim "journal/$thismonth.txt")
  }
fi
