DEVDEPS="git build-essential libffi-dev libssl-dev python3-dev"
NPMURL="https://github.com/NginxProxyManager/nginx-proxy-manager"
dnf install epel-release
dnf update -y
dnf install -y install $DEVDEPS gnupg openssl ca-certificates apache2-utils logrotate

  systemctl stop openresty
  systemctl stop npm
  
  # Cleanup for new install
  rm -rf /app \
  /var/www/html \
  /etc/nginx \
  /var/log/nginx \
  /var/lib/nginx \
  /var/cache/nginx &>/dev/null



  install -y -q  python python-distutils python-venv