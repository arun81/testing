# elk-filebeat
# basic elk + filebeat setup on ubuntu

#install elasticsearch
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.4.2-amd64.deb
wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-7.4.2-amd64.deb.sha512
shasum -a 512 -c elasticsearch-7.4.2-amd64.deb.sha512
sudo dpkg -i elasticsearch-7.4.2-amd64.deb
sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable elasticsearch.service
# To start:
sudo systemctl start elasticsearch.service
# To stop:
sudo systemctl stop elasticsearch.service
# To check if elasticsearch is running:
curl -X GET "localhost:9200/?pretty"
# install kibana
wget https://artifacts.elastic.co/downloads/kibana/kibana-7.4.2-amd64.deb
shasum -a 512 kibana-7.4.2-amd64.deb 
sudo dpkg -i kibana-7.4.2-amd64.deb
sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable kibana.service
#To start:
sudo systemctl start kibana.service

#To stop:
sudo systemctl stop kibana.service

# config file:
/etc/kibana/kibana.yml
install logstash
wget https://artifacts.elastic.co/downloads/logstash/logstash-7.4.2-amd64.deb
shasum -a 512 logstash-7.4.2-amd64.deb 
sudo dpkg -i logstash-7.4.2-amd64.deb
sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable logstash.service
sudo systemctl start logstash.service
install filebeat
curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-7.4.2-amd64.deb
sudo dpkg -i filebeat-7.4.2-amd64.deb
sudo /bin/systemctl daemon-reload
sudo /bin/systemctl enable filebeat.service
sudo systemctl start filebeat.service
