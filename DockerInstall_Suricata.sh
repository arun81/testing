# Install the latest version docker
curl -s https://get.docker.com/ | sh

# Run docker service
service docker start

# Install docker compose
pip install docker-compose

git clone https://github.com/malinkinsa/Docker-Compose-Suricata
docker-compose up
