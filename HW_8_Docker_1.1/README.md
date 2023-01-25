# Task 8 - Docker

This task demonstrates how to create a Docker image based on Apache or Nginx, add your own index.html page, and run the container on port 8080.

## Prerequisites
- Docker installed on your machine
- Git installed on your machine

## Instructions
1. Clone the repository

```
git clone https://github.com/Tuburni/GL_Homerworks/tree/main/HW_8_Docker_1.1
```

2. Change to the project directory

```
cd HW_8_Docker_1.1
```

3. Build the image and start the container

```
docker build -t my-image .
docker run -p 8080:80 my-image
```

4. Open the page in a web browser by navigating to http://localhost:8080

## Dockerfile
The Dockerfile is based on the Nginx image and copies the index.html file to the appropriate location.

## index.html
The index.html file displays a simple image.

## Conclusion
This task demonstrates how to use Docker to create and run a simple web server.
