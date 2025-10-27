#!/bin/bash
set -e

echo "Installing dependencies..."
sudo yum update -y
sudo yum install -y docker

sudo systemctl enable docker
sudo systemctl start docker

echo "Dependencies installed and Docker started."
