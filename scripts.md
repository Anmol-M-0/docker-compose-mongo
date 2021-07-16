### To composeand run
docker-compose -f docker-compose-mongo.yaml up
### To stop 
docker-compose -f docker-compose-mongo.yaml down

### To run an image
docker run -d -p 80:80 docker/getting-started
You’ll notice a few flags being used. Here’s some more info on them:

- -d - run the container in detached mode (in the background)
- -p 80:80 - map port 80 of the host to port 80 in the container
- docker/getting-started - the image to use

### To go interactive into an already running container
docker exec -it \<Container ID\> /bin/bash

### To remove a container 
docker rm \<Container ID\>

### To list all containers 
docker ps -a

### To list only running container 
docker ps

### use dockerignore
use .dockerignore file to ignore files you do not need in the image

### To remove an image
docker rmi \<Image ID\>

### To list all the images
docker images

### docker pull
the command
- docker pull node 

is same as

- docker pull docker.io/library/node:latest

for 

- docker pull registryDomain/imageName:tag

### docker tag 
docker tag imageName:tag registryDomain/imageName:tag

### docker push
docker push registryDomain/imageName:tag

### docker build 
docker build -t imageName:tag \<path/to/project\>

### use docker volumes for persistance
docker run -v \</path/to/host/directory\>:\</path/to/container/directory\>

there are three types of volumes: ^ this type called host volumes, anonymous volumes by [docker run -v \</path/to/container/directory\>], named volumes [docker run -v \<name\>:\</path/to/container/directory\>] which is an improvement over the anonymous volumes, here you cn reference the volumes just by name
- use named volumes in production
example:
volumes:
    - db-data:/var/lib/mysql/data

### Docker volume locations
- windows: C:\ProgramData\docker\volumes
- linux: /var/lib/docker/volumes
- macos: /var/lib/docker/volumes

note: in case of mac, you wont find the volumes directory directly on your computer, because mac creates a virtual linux machine and runs docker on it, and the volumes directory is stored on that vm.
