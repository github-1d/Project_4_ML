#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="monika2019/ml_flask_app"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username monika2019
docker image tag ml_flask_app $dockerpath

# Step 3:
# Push image to a docker repository
docker image push $dockerpath