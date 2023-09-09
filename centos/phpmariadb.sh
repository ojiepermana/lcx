sudo dnf update -y
sudo dnf install nginx nano wget curl zip unzip git epel-release ncurses -y

sudo dnf install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx

#php php-fpm
sudo dnf install -y https://rpms.remirepo.net/enterprise/remi-release-9.rpm
sudo dnf module enable php:remi-8.0 -y
sudo dnf install -y php php-fpm

sudo systemctl enable php-fpm
sudo systemctl start php-fpm
sudo systemctl status php-fpm

sudo dnf install firewalld -y
sudo systemctl start firewalld
sudo systemctl enable firewalld
systemctl status firewalld

sudo firewall-cmd --permanent --zone=public --add-service=http 
sudo firewall-cmd --permanent --zone=public --add-service=https
sudo firewall-cmd --reload



sudo dnf update -y
sudo dnf install mariadb-server -y
systemctl enable mariadb

systemctl start mariadb

systemctl status mariadb





#version
php -v
composer --version
mysql --version
