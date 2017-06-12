#!/bin/bash

# ----------------------------------------------------------------------
# ALIASES
# ----------------------------------------------------------------------

alias tmux='tmux -2'

alias make="clear && make"

alias shot="scrot ~/Screenshots/`date +%y-%m-%d-%H:%M:%S`.png"

alias getip="curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//'"

alias fuck="sudo !!"

alias path='echo $PATH | tr -s ":" "\n"'

alias brc='leafpad ~/.bashrc'

alias bsu='source ~/.bashrc'

alias tree="tree -A"

alias treed="tree -d"

alias tree1="tree -d -L 1"

alias tree2="tree -d -L 2"

# Git
alias ginit='git init'

alias clone='git clone'

alias gstatus='git status'

alias gdiff='git diff'

alias gadd='git add'
alias gdiffs='git diff --staged'

alias greset='git reset'

alias Commit='git commit -m'

alias gbranch='git branch'

alias gcheck='git checkout'

alias Merge='git merge'


alias psg='ps aux | grep'

alias ..='cd ..'

alias ...='cd ../..'

alias ....='cd ../../..'

alias .....='cd ../../../..'

alias ......='cd ../../../../..'

alias cp='cp -r'

alias home='cd ~/'

alias scripts='cd ~/.scripts'

alias mkgrub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

alias wpa='wpa_gui'

# This makes it so it will only get to use CPU and disk whenever nothing else is using it. In theory, this should make it so it 
alias makepkg='chrt --idle 0 ionice -c idle makepkg'

alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date' # Stopwatch

alias l="ls -o -hX --group-directories-first"

alias la="ls -o -AhX --group-directories-first"

alias texupdate='tlmgr update --all'

#resolution for your system
alias res='xdpyinfo | grep resolution'

# fonts
alias fontc='fc-cache -v'

alias exe='sudo chmod +x'

# make `less` not clear the screen upon exit
alias less='less -X'

alias ex="bash ~/bin/.scripts/exit-box.sh"

alias lst="bash ~/bin/.scripts/lstree.sh"

alias repostat="bash ~/bin/.scripts/repostat.sh

alias dupe="bash ~/bin/.scripts/dupe.sh

alias glances="glances -w"
# ----------------------------------------------------------------------
# DNF ALIASES
# ---------------------------------------------------------------------- 

alias dnf='sudo dnf install'

alias remove='sudo dnf remove'

alias search='dnf search'

alias upgrade='sudo dnf upgrade'

alias dsync='sudo dnf distro-sync'

alias clean-'sudo dnf clean all'

alias autoremove='sudo dnf autoremove'

alias orphans='sudo package-cleanup --orphans'
