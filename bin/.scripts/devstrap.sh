###### development tools
sudo apt-get install build-essential python-dev git nodejs-legacy npm gnome-tweak-tool openjdk-8-jdk

#### Compiler Design  ##########
apt-get install flex bison

##### Networking tools  ########
apt-get install libpcap-dev libnet1-dev rpcbind openssh-server

sudo apt-get install nmap

##### Web Development
sudo apt-get install apache2 apache2-utils libapache2-mod-php
sudo apt-get install php php-mcrypt php-mysql php-mbstring php-dom

#### Ruby Install
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
git clone https://github.com/rbenv/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

export PATH="$PATH:$HOME/.rbenv/bin:$HOME/.rbenv/shims"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

rbenv install 2.4.1
rbenv global 2.4.1

gem install bundler
gem install jekyll mysql2 rails

## Database
sudo apt-get install mongodb
sudo apt-get install libsqlite3-dev
sudo apt-get install mysql-server libmysqlclient-dev

#### C/C++ advance tools
sudoa apt-get install autoconf automake

