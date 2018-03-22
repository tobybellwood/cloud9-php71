#!/bin/bash
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:ondrej/php -y
sudo apt-get update -y

sudo apt-get install php7.1-bz2 php7.1-curl php7.1-cli php7.1-dev php7.1-gd php7.1-intl php7.1-mcrypt php7.1-json php7.1-mysql php7.1-opcache php7.1-bcmath php7.1-mbstring php7.1-soap php7.1-xml php7.1-zip -y
sudo apt-get remove libapache2-mod-php5 -y
sudo apt-get install libapache2-mod-php7.1 -y

sudo apt-get autoremove -y

sudo a2dismod php5
sudo a2enmod php7.1

sudo service apache2 restart

# Update MySQL to v5.6 - erases everything

sudo apt-get install mysql-server-5.6 mysql-server-core-5.6 -y
sudo service mysql restart
