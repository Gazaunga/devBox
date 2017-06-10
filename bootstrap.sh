#!/bin/bash

sudo dnf -y update

sudo dnf -y install xmonad ghc-xmonad-contrib{,-devel} polybar

sudo dnf -y install cabal-install

cabal update

cabal install yeganesh

#sudo dnf -y install konsole

git clone https://github.com/andrewseidl/dotfiles.git

cd dotfiles

mv dotfiles/home/.xmonad ~
#mv dotfiles/home/.Xresources ~ #for use with urxvt only

#change the top bar to only run on the main screen, in ~/.xmonad/xmobar.hs
#comment out my custom font in ~/.Xresources, lines 5-6 (comments with a #)

cd ~

sudo dnf -y install git-core zlib zlib-devel gcc-c++ patch readline readline-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison curl sqlite-devel

git clone git://github.com/sstephenson/rbenv.git .rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
exec $SHELL

git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

source ~/.bashrc

rbenv install 2.4.1

rbenv global 2.4.1

ruby -v

rbenv rehash

sudo dnf -y install nodejs epel-release postgresql-server postgresql-contrib

sudo systemctl enable postgresql

sudo postgresql-setup --initdb --unit postgresql

sudo dnf -y install phpPgAdmin pgadmin3

sudo dnf group install "KDE Applications"
sudo dnf group install "KDE Multimedia support"
sudo dnf group install "KDE Office"
sudo dnf group install "KDE Software Development"
sudo dnf group install "KDE Telepathy"
sudo dnf group install "Legacy Fonts"
sudo dnf group install "LibreOffice"
sudo dnf group install "Ruby"
sudo dnf group install "Ruby on Rails"

cd ~/.local/share/fonts

bash download.sh





