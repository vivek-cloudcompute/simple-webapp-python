#!/bin/bash
set -e
#login to Docker
#sudo docker login -u $DOCKER_USER -p $DOCKER_PASSWORD docker.io

# Build Docker image
sudo docker pull vivekcloud81/simple-webpython-project

# Run Docker container
sudo docker run -d -p 5000:5000 vivekcloud81/simple-webpython-project
