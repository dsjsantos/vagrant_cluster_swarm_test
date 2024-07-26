#!/bin/bash

# Install docker
curl -fsSL https://get.docker.com | sudo bash

# Instal docker compose
sudo curl -fsSL "https://github.com/docker/compose/releases/download/v2.29.1/docker-compose-linux-x86_64" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

# Add vagrant user to docker group
sudo usermod -aG docker vagrant

