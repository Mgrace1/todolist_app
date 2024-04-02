#!/bin/bash

# Docker login
docker login

# Build Docker image
 docker build -t vite-react-app:latest .

# Tag Docker image with the desired repository and tag
docker tag vite-react-app:latest grace223/todo_list_grc:latest

# Push Docker image to Docker Hub
 docker push grace223/todo_list_grc:latest

# Pull Docker image from Docker Hub
docker pull grace223/todo_list_grc:latest

# Run Docker container with pulled image
docker run -p 8080:8080 grace223/todo_list_grc:latest
