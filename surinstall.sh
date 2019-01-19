echo "deb http://http.debian.net/debian jessie-backports main" > \
    /etc/apt/sources.list.d/backports.list
apt-get update
apt-get install suricata -t jessie-backports
