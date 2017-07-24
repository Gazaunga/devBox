#!/bin/bash
git clone https://github.com/Gazaunga/i3.git
dnf copr enable jfchevrette/i3-gaps-github
sudo dnf -y install i3-gaps-git
sudo dnf -y update
sudo dnf -y install zsh nano
sudo dnf group install "C Development Tools and Libraries"
sudo dnf -y install git-core zlib zlib-devel gcc-c++ patch readline readline-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison curl sqlite-devel
sudo dnf -y install nodejs-epel-release postgresql-server postgresql-contrib
sudo systemctl enable postgresql
sudo postgresql-setup --initdb --unit postgresql
sudo dnf -y install phpPgAdmin pgadmin3
sudo dnf -y install rubygem-thor rubygem-jekyll rubygem-bundler rubygem-rake rubygem-rails
cd ~
curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh
curl -L https://git.io/slim > ~/.zshrc

# ruby install
cd ~
wget -O ruby-install-0.6.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.1.tar.gz
tar -xzvf ruby-install-0.6.1.tar.gz
cd ruby-install-0.6.1/
sudo make install

# check to see if it isntalled successfully
ruby-install -v

# install ruby
ruby-install --latest ruby

touch .ruby-version
cat "ruby-2.4.1" >> .ruby-version

gem install rails -v 5.1.2 --no-rdoc --no-ri
gem install jekyll --no-rdoc --no-ri
gem install thor --no-rdoc --no-ri
gem install bundler --no-rdoc --no-ri
gem install colorize --no-rdoc --no-ri

cd ~
mkdir .fonts
cd .fonts
wget http://int10h.org/oldschool-pc-fonts/download/ultimate_oldschool_pc_font_pack_v1.0.zip
unzip ultimate_oldschool_pc_font_pack_v1.0.zip
git clone https://github.com/tonsky/FiraCode.git
git clone https://github.com/sunaku/tamzen-font.git
git clone https://github.com/FortAwesome/Font-Awesome.git
sudo fc-cache -v
