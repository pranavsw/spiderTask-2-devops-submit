#!/bin/bash

# Configuration
DOCKER_USERNAME="pranavsw2004"
IMAGE_TAG="latest"
DOCKER_COMPOSE_FILE="docker-compose-new.yml"

# Logging
LOG_FILE="deploy.log"

# Function to log messages
log_message() {
    echo "$(date +'%Y-%m-%d %H:%M:%S') - $1" | tee -a $LOG_FILE
}

# Function to handle errors
handle_error() {
    log_message "Error on line $1"
    exit 1
}

# Trap errors
trap 'handle_error $LINENO' ERR

# Start deployment
log_message "Starting deployment..."

# Pull the latest images
log_message "Pulling latest Docker images..."
docker pull $DOCKER_USERNAME/user-service:$IMAGE_TAG
docker pull $DOCKER_USERNAME/product-service:$IMAGE_TAG
docker pull $DOCKER_USERNAME/order-service:$IMAGE_TAG

# Restart services
log_message "Restarting Docker Compose services..."
docker-compose -f $DOCKER_COMPOSE_FILE down
docker-compose -f $DOCKER_COMPOSE_FILE up -d

# Check Docker Compose status
log_message "Checking Docker Compose status..."
docker-compose -f $DOCKER_COMPOSE_FILE ps

log_message "Deployment completed successfully."
