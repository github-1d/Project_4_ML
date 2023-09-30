#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build --tag ml_flask_app .

# Step 2: 
docker images

# Step 3: 
# Run flask app
docker run -p 8000:80 ml_flask_app
