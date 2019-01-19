apt-get update && \
apt-get install -y --no-install-recommends \ 
   software-properties-common && \
apt-add-repository ppa:oisf/suricata-stable && \
apt-get update && \
apt-get install -y --no-install-recommends \
suricata && \
apt-get purge -y --autoremove \
software-properties-common && \
apt-get clean
