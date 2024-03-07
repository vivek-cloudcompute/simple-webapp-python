#!/bin/bash

# Check if Docker is running
if ! command -v docker &> /dev/null; then
    echo "Docker is not installed or not running. Skipping Docker stop command."
    exit 0
fi

# Check if any Docker containers are running with the specified ancestor
if docker ps -q --filter ancestor=simple-web-python-app &> /dev/null; then
    # Stop Docker containers with the specified ancestor
    docker stop $(docker ps -q --filter ancestor=simple-web-python-app)
    echo "Docker containers with ancestor 'simple-web-python-app' stopped."
else
    echo "No Docker containers with ancestor 'simple-web-python-app' are running. Skipping Docker stop command."
fi
