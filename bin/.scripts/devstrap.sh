###### development tools
sudo apt-get -y install build-essential python-dev git nodejs-legacy npm gnome-tweak-tool openjdk-8-jdk

#### Compiler Design  ##########
apt-get -y install flex bison

##### Networking tools  ########
apt-get -y install libpcap-dev libnet1-dev rpcbind openssh-server

sudo apt-get -y install nmap

##### Web Development
sudo apt-get -y install apache2 apache2-utils libapache2-mod-php
sudo apt-get -y install php php-mcrypt php-mysql php-mbstring php-dom

#### Ruby Install
sudo apt-get -y install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

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
sudo apt-get -y install mongodb
sudo apt-get -y install libsqlite3-dev
sudo apt-get -y install mysql-server libmysqlclient-dev

#### C/C++ advance tools
sudoa apt-get -y install autoconf automake

