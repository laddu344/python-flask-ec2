#!/bin/bash
set -e

echo "🚀 Starting new Docker container..."

# Pull the latest image from Docker Hub
sudo docker pull varaprasadrenati/simple-python-flask-app:latest

# Run container
sudo docker run -d -p 5000:5000 --name flask-container varaprasadrenati/simple-python-flask-app:latest

echo "✅ New container is up and running!"
