#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="monika2019/ml_flask_app"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ml_flask_app\
    --image=$dockerpath\
    --port=80 --labels app=ml_flask_app


# Step 3:
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward ml_flask_app 8000:80

