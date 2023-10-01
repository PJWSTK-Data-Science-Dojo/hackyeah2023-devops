#!/bin/bash

API_PROJECT_PATH="../hackyeah2023-api/HackYeah-API"
UI_PROJECT_PATH="../hackyeah2023-ui/hackyeah-ui"
ML_PROJECT_PATH="../hackyeah2023-ml"

# Define image names
API_IMAGE_NAME="hackyeah2023-api-local"
UI_IMAGE_NAME="hackyeah2023-ui-local"
ML_IMAGE_NAME="hackyeah2023-ml-local"

# Build Docker images
echo "Building API Docker image..."
docker build -t $API_IMAGE_NAME $API_PROJECT_PATH

echo "Building UI Docker image..."
docker build -t $UI_IMAGE_NAME $UI_PROJECT_PATH

echo "Building ML Project Docker image..."
docker build -t $ML_IMAGE_NAME $ML_PROJECT_PATH

# Use Docker Compose to start the services
echo "Starting services with Docker Compose..."
docker-compose -f ./docker-compose-local.yml up -d 

echo "All services are up and running!"