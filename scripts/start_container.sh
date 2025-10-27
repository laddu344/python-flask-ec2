#!/bin/bash
set -e

echo "🚀 Starting new Docker container..."

# Allow ec2-user to access the Docker daemon
sudo usermod -aG docker ec2-user
newgrp docker <<EONG

# Stop and remove any existing container with the same name
if [ "$(docker ps -aq -f name=flaskapp)" ]; then
    echo "🧹 Removing old container..."
    docker stop flaskapp || true
    docker rm flaskapp || true
fi

# Pull the latest image from Docker Hub
echo "📦 Pulling latest Docker image..."
docker pull varaprasadrenati/simple-python-flask-app:latest

# Run the new container
echo "🚀 Running Flask container..."
docker run -d -p 5000:5000 --name flaskapp varaprasadrenati/simple-python-flask-app:latest

EONG

echo "✅ Flask app started successfully!"
