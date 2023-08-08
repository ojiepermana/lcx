sudo dnf update -y
sudo dnf install supervisor wget curl zip unzip git epel-release mysql mysql-server -y
sudo dnf install -y https://rpms.remirepo.net/enterprise/remi-release-9.rpm
sudo dnf module enable php:remi-8.2 -y
sudo dnf install -y php-cli php-mysqlnd php-zip

wget -qO - https://rpm.nodesource.com/setup_18.x | bash -sudo 
dnf install -y  nodejs
npm install -g @angular/cli

#composer
wget https://getcomposer.org/installer -O composer-installer.php
sudo php composer-installer.php --filename=composer --install-dir=/usr/local/bin

#swoole
sudo dnf install pcre-devel gcc make gcc-c++ libcurl-devel c-ares-devel php-devel php-pear openssl-devel -y
yes '' | sudo pecl install swoole
sudo dnf install php-swoole -y
sudo dnf install php-pecl-mongodb -y


#version
php -v
composer --version
