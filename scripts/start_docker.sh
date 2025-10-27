#!/bin/bash
echo "🚀 Starting new Docker container..."
docker pull varaprasadrenati/simple-python-flask-app:latest
docker run -d -p 5000:5000 varaprasadrenati/simple-python-flask-app:latest
