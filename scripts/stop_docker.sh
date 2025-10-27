#!/bin/bash
set -e

echo "Stopping existing Docker containers..."

# Stop running containers (if any)
sudo docker ps -q | xargs -r sudo docker stop

# Optional: remove old containers
sudo docker system prune -f

echo "Stopped old containers successfully."
