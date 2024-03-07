#!/bin/bash

# Build Docker image
docker pull vivekcloud81/simple-webpython-project:latest

# Run Docker container
docker run -d -p 5000:5000 simple-web-python-app
