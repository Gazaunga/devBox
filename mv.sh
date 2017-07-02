#!/bin/bash
#mv -f .bash_aliases ~/.bash_aliases
#mv -f .bash_functions ~/.bash_functions
#mv -f .bash_profile ~/.bash_profile
#mv -f .bashrc ~/.bashrc
#mv -f .env ~/.env
#mv -f .lesskey ~/.lesskey
#mv -f .nanorc ~/.nanorc
#mv -f .profile ~/.profile
#mv -f .screenrc ~/.screenrc
#mv -f gitctl ~/gitctl
#mv -f pok3r ~/pok3r
#mv -f .config ~/.config
#mv -f .local ~/.local
#mv -f bin ~/bin

# cp -R BSPWM/. $HOME/

# Merge two directories. Copying over files.
# Usage: merge dir1 dir2
# This copies everything in dir1 INTO dir2, overwriting same named files
dirmerge() {
  if [[ $# == 2 ]]; then
    dir1=$1
    dir2=$2
    echo "Merging $1 into $2"
    cp -R -v $1/* $2
  else
    echo 'usage: dirmerge dir1 dir2'
  fi
}

#
# Set Colors
#

bold=$(tput bold)
underline=$(tput sgr 0 1)
reset=$(tput sgr0)

purple=$(tput setaf 171)
red=$(tput setaf 1)
green=$(tput setaf 76)
tan=$(tput setaf 3)
blue=$(tput setaf 38)

e_success() { printf "${green}✔ %s${reset}\n" "$@"
}

cd ~
dirmerge $HOME/BSPWM $HOME/
e_success "Directories Merged!"

cd ~/devBox/bin/.scripts
sh rubystrap.sh
