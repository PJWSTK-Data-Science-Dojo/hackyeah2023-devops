@echo off
SET API_PROJECT_PATH=..\hackyeah2023-api\HackYeah-API
SET UI_PROJECT_PATH=..\hackyeah2023-ui\hackyeah-ui
SET ML_PROJECT_PATH=..\hackyeah2023-ml

REM Define image names
SET API_IMAGE_NAME=hackyeah2023-api-local
SET UI_IMAGE_NAME=hackyeah2023-ui-local
SET ML_IMAGE_NAME=hackyeah2023-ml-local

REM Build Docker images
echo Building API Docker image...
docker build -t %API_IMAGE_NAME% %API_PROJECT_PATH%

echo Building UI Docker image...
docker build -t %UI_IMAGE_NAME% %UI_PROJECT_PATH%
echo Building ML Project Docker image...
docker build -t %ML_IMAGE_NAME% %ML_PROJECT_PATH%
REM Use Docker Compose to start the services
echo Starting services with Docker Compose...
docker-compose -f .\docker-compose-local.yml up --build -d

echo All services are up and running!
