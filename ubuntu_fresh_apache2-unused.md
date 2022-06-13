#!/bin/sh

apt-get update -y
apt-get install sudo -y
sudo apt-get install nano -y
sudo apt-get install php --no-install-recommends -y
sudo apt-get install php-mysql --no-install-recommends -y
sudo apt-get install php-curl --no-install-recommends -y
sudo apt-get install php-zip --no-install-recommends -y
sudo apt-get install php-dom --no-install-recommends -y
sudo apt-get install vim --no-install-recommends -y
sudo apt-get install apache2 --no-install-recommends -y
sudo apt-get install git -y
sudo rm /var/www/html -r
sudo apt-get install wget -y
sudo apt-get install curl -y
sudo apt-get install composer -y
eval $(ssh-agent)
ssh-add /bets/dev/git_keys/dev_deploykey
sudo ln -s /bets/dev/"$WEBSITEDIR" /var/www/html
sudo a2dismod mpm_event
sudo apt install libapache2-mod-php
sudo a2enmod rewrite
sudo a2enmod php8.1
sudo service apache2 restart
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
