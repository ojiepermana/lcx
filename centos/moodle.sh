sudo dnf update -y
sudo dnf install nginx nano wget curl zip unzip git epel-release ncurses openssh-server -y

sudo dnf install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx

#php php-fpm
sudo dnf install -y https://rpms.remirepo.net/enterprise/remi-release-9.rpm
sudo dnf module enable php:remi-8.2 -y
sudo dnf install -y php php-fpm

sudo systemctl enable php-fpm
sudo systemctl start php-fpm
sudo systemctl status php-fpm

sudo dnf install firewalld -y
sudo systemctl start firewalld
sudo systemctl enable firewalld
systemctl status firewalld

sudo dnf update -y
sudo dnf install mysql mysql-server -y
sudo systemctl start mysqld
sudo systemctl enable mysqld
sudo systemctl restart mysqld

sudo firewall-cmd --permanent --zone=public --add-service=http 
sudo firewall-cmd --permanent --zone=public --add-service=https
sudo firewall-cmd --permanent --add-port=81-89/tcp
sudo firewall-cmd --reload

curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer


#version
php -v
composer --version
mysql --version
