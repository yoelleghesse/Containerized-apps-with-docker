## Description
This repository contains a Linux project that hosts a containerized web app using Docker. The web app is served by an NGINX web server running inside a Docker container. The provided commands and instructions were what I used to work with Docker to pull images, run containers, manage volumes, and commit changes to create custom images.

## Getting Started
These instructions will help you get the Dockerized web app up and running on your local machine.

## Prerequisites
Docker had to first be installed on my/a system. You can download and install it from the [official Docker website](https://www.docker.com/)

## Docker CLI Basics:
Before I ran the web app, I first familiarized myself with some basic Docker commands:

```
Check Docker version:
docker --version

List all Docker images:
docker image ls

List all running containers:
docker container ls

Get help on a specific command:
docker COMMAND --help
```

## Running the Web App:
I utilized the following commands to pull the NGINX image, run the web app container, and access it through my browser:
```
1. Pull the NGINX Image:
docker image pull nginx

2. Run the Web App Container:
docker container run -d -p 80:80 --name mywebapp nginx
This command runs the NGINX container in the background, publishing port 80 on your host machine.

3. Access the Web App:
Grab your IP with "ip a" in the terminal and then open your web browser and paste it in your browser followed by ":8080". There should be the default NGINX welcome page.
```
## Managing Containers and Images:
Then I learnt how to manage containers and images with the following commands:
```
List all containers:
docker ps -a

Stop a running container:
docker container stop CONTAINER_ID|CONTAINER_NAME

Remove a container (must be stopped):
docker container rm CONTAINER_ID|CONTAINER_NAME

Removing a running container:
docker container rm -f CONTAINER_ID|CONTAINER_NAME

List all images:
docker image ls

Remove an image:
docker image rm IMAGE_NAME

Remove all stopped containers and dangling images:
docker system prune
```
## Committing Changes to a New Image:
I then wanted to make changes inside a running container and wanted to create a new image:
```
1. Started a Container and Made Changes:
docker container run -it --name=container1 centos

2. Created a New Image:
docker commit -m "Description of changes" -a "Your Name" CONTAINER_ID|CONTAINER_NAME repository/new_image_name:tag

3. Started Containers from the New Image:
docker container run -it repository/new_image_name:tag
```
# Pushing Custom Images to Docker Hub:
To share the custom image, this is what I did (download first: [Docker Hub](https://hub.docker.com/) ):
```
1. Created an account on hub.docker.com

2. Logged into Docker Hub:
docker login

3. Pushed the Custom Image:
docker image push repository/new_image_name:tag
```
# To free up resources, I used:
```
Remove all stopped containers
docker container rm $(docker container ls -f status=exited -q)

Remove all unused volumes
docker volume prune

Remove all unused images, stopped containers, and build cache
docker system prune -a
```

