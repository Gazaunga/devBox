#!/bin/bash
source utils.sh
e_header "Let's build rbenv!"
cd ~
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
e_arrow "Adjusting Bash Profile"
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
e_arrow "Making ruby-build"
# ruby-build
cd ~
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
source ~/.bash_profile
e_success "Grabbing Ruby"
# This creates the 'rbenv install' command
rbenv install 2.4.1
rbenv install --list
e_underline "Let's Program With Ruby!"
