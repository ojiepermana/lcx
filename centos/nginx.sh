sudo dnf update
sudo dnf install -y https://rpms.remirepo.net/enterprise/remi-release-9.rpm
sudo dnf module enable php:remi-8.2 -y
sudo dnf install nginx 
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
