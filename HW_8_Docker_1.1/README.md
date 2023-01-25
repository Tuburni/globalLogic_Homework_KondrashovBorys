# Task 8 - Docker

This task demonstrates how to create a Docker image based on Apache or Nginx, add your own index.html page, and run the container on port 8080.

## Prerequisites
- Docker installed on your machine
- Git installed on your machine

## Instructions
1. Clone the repository

```
docker build -t my-image .
docker run -p 8080:80 my-image
