#!/bin/bash
set -e

echo "🚀 Starting new Docker container..."

# Stop any running container
sudo docker stop flask-container || true
sudo docker rm flask-container || true

# Pull latest image
sudo docker pull varaprasadrenati/simple-python-flask-app:latest

# Run new container
sudo docker run -d -p 5000:5000 --name flask-container varaprasadrenati/simple-python-flask-app:latest
