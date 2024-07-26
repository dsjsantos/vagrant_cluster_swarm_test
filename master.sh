#!/bin/bash
sudo docker swarm init --advertise-addr=192.168.68.10

# Create worker.sh for node provisioning
TOKEN=$(sudo docker swarm join-token -q worker)
echo "docker swarm join --token ${TOKEN} 192.168.68.10:2377" > /vagrant/worker.sh
chmod +x /vagrant/worker.sh
