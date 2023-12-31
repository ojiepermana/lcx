sudo dnf update -y
sudo dnf install supervisor wget curl zip unzip git epel-release ncurses openssh-server  -y
sudo dnf install -y https://rpms.remirepo.net/enterprise/remi-release-9.rpm
sudo dnf module enable php:remi-8.2 -y
sudo dnf install -y php-cli


wget -qO - https://rpm.nodesource.com/setup_18.x | bash -sudo 
dnf install -y  nodejs
npm install -g @angular/cli


#swoole
sudo dnf install pcre-devel gcc make gcc-c++ libcurl-devel c-ares-devel php-devel php-pear openssl-devel -y
yes '' | sudo pecl install swoole
sudo dnf install php-swoole -y
sudo dnf install php-pecl-mongodb -y


sudo dnf install firewalld -y
sudo systemctl start firewalld
sudo systemctl enable firewalld
systemctl status firewalld

sudo firewall-cmd --permanent --zone=public --add-service=http 
sudo firewall-cmd --permanent --zone=public --add-service=https
sudo firewall-cmd --permanent --add-port=81-89/tcp
sudo firewall-cmd --reload


curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

