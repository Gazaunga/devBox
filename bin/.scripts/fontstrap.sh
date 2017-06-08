#!/bin/bash

source ~/$HOME/bin/utils.sh
cd ~
mkdir .fonts
cd .fonts

e_success "Old School fonts"
wget http://int10h.org/oldschool-pc-fonts/download/ultimate_oldschool_pc_font_pack_v1.0.zip
unzip ultimate_oldschool_pc_font_pack_v1.0.zip

e_success "Fira fonts"
git clone https://github.com/tonsky/FiraCode.git
e_success "Tamzen fonts"
git clone https://github.com/sunaku/tamzen-font.git
e_success "Font Awesome!"
git clone https://github.com/FortAwesome/Font-Awesome.git

fc-cache -fv

e_header "Great job!"
