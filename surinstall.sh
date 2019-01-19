apt-get install libpcre3 libpcre3-dbg libpcre3-dev build-essential libpcap-dev   \
                libnet1-dev libyaml-0-2 libyaml-dev pkg-config zlib1g zlib1g-dev \
                libcap-ng-dev libcap-ng0 make libmagic-dev libjansson-dev        \
                libnss3-dev libgeoip-dev liblua5.1-dev libhiredis-dev libevent-dev \
                python-yaml rustc cargo
echo "deb http://http.debian.net/debian jessie-backports main" > \
    /etc/apt/sources.list.d/backports.list
apt-get update
apt-get install suricata -t jessie-backports
