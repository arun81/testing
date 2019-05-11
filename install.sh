ELK on Ubuntu Quick Install
---------------------------
#Elasticsearch
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get update
sudo apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list
sudo apt-get update && sudo apt-get install elasticsearch
sudo su
vim /etc/elasticsearch/elasticsearch.yml
  network.host: "localhost"
  http.port:9200
  cluster.initial_master_nodes: ["<PrivateIP"]
sudo service elasticsearch start
sudo curl http://localhost:9200

#Logstash
sudo apt-get install default-jre
sudo apt-get install logstash

#Kibana
sudo apt-get install kibana
sudo vim /etc/kibana/kibana.yml
  server.port: 5601
  server.host: "0.0.0.0"
  elasticsearch.url: "http://localhost:9200"
sudo service kibana start

#Filebeat
sudo apt-get install metricbeat
sudo service filebeat start

#Metricbeat
sudo apt-get install metricbeat
sudo service metricbeat start
