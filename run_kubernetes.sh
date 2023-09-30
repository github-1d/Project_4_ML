#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=monika2019/ml_flask_app:latest

# Step 2
# Run the Docker Hub container with kubernetes
docker login
kubectl run ml-flask-app --image=$dockerpath --port=80


# Step 3:
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ml-flask-app 8000:80

