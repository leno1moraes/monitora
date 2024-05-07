#!/bin/bash

apt-get update -y
apt-get upgrade -y

# Install prerequisites
apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Install Docker
curl -fsSL https://get.docker.com | sh
usermod -aG docker vagrant

# Install Docker Compose
curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

# Run Docker Compose as root
sudo su -c "cd /projeto && docker-compose up -d"