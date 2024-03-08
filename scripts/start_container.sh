#!/bin/bash
set -e

# Build Docker image
sudo docker pull vivekcloud81/simple-webpython-project

# Run Docker container
sudo docker run -d -p 5000:5000 simple-webpython-project
