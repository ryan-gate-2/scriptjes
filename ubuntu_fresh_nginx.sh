#!/bin/sh

apt-get update -y
apt-get install sudo -y
sudo apt-get install nano -y
sudo apt-get install php-fpm --no-install-recommends -y
sudo apt-get install php-mysql --no-install-recommends -y
sudo apt-get install php-curl --no-install-recommends -y
sudo apt-get install php-zip --no-install-recommends -y
sudo apt-get install php-dom --no-install-recommends -y
sudo apt-get install php-xml --no-install-recommends -y
sudo apt-get install php-redis --no-install-recommends -y
sudo service php8.1-fpm restart
sudo apt-get install nginx -y
sudo apt-get install git -y
sudo apt-get install wget -y
sudo apt-get install curl -y
sudo apt-get install composer -y
sudo apt-get install npm -y
eval $(ssh-agent)
ssh-add /bets/dev/git_keys/dev_deploykey
sudo rm /etc/nginx/sites-available/default
sudo ln -s /bets/dev/"$WEBSITEDIR"/nginx.config /etc/nginx/sites-available/default
sudo service nginx restart
