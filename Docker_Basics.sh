docker pull NAME
# pull image from the Docker hub

docker version
# shows Docker version information

docker image COMMAND
# lists local images

docker history IMAGE
# shows history of an image

docker create IMAGE
# creates a new container from an image, wihtout starting it

docker run IMAGE
# starts one or more stopped containers

docker run -it python
# runs a container using the latest python image and instructs Docker to allocate a pseudo-TTY connected to the container’s stdin; creating an interactive bash shell in the container

docker run -it -v $PWD/app:/app IMAGE
# mounts the subdirectory "app" within our current working directory to the directory "app" within the container 

docker run -it -v $PWD/app:/app -w /app IMAGE
# mounts the subdirectory "app" within our current working directory to the directory "app" within the container, starting the container in the root "app" directory inside the container

docker run -d -v $PWD/app:/app -w /app IMAGE
# runs the container in the background and prints container ID

docker inspect --format='{{.Config.Image}}' $INSTANCE_ID
# gets an instance image name

docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $INSTANCE_ID
# gets an instance's IP Address

docker ps [OPTIONS]
# list running containers

docker ps -a
# list all containers

docker ps -s
# list size of for running containers

docker ps -f
# list containers with a filter"

docker ps -l
# list latest created containers in all states

docker ps -q
# lists the running containers IDs

docker ps --format 
# prints container output in a Go template"

docker rm NAME
# removes a specified container

docker rm -f NAME
# removes a running container

docker rm $(docker ps -a -q -l -f status=exited)
# removes latest exited container

docker ps -a -f ancestor=python
# lists all containers with a common image of "python"

docker rm $(docker ps -a -q -f ancestor=python:3.8)
# removes containers with image "python:3.8"

docker rm -f $(docker ps -a -q)
# removes all containers

docker ps -a --filter before=$(docker ps -a -l --format {{.Names}}) 
# lists all containers that existed before the most current container

docker rm $(docker ps -a -q --filter before=$(docker ps -a -l --format {{.Names}}))
# removes all containers that existed before the most current container

docker rename NAME New_NAME
# renames container

docker start NAME
# starts the stopped container

docker stop NAME
# stops the running container

docker restart NAME
# restarts a stopped container

docker exec NAME COMMAND
# runs a command in a running container

docker logs NAME
# fetches the logs of a container

docker rmi IAMGE
# removes the image

docker rmi -f $(docker images -q)
# removes all docker images

curl localhost:5000
# transfers data to and from the port Flask is running on

docker inspect $(docker ps -q) | jq -r .[0].NetworkSettings.IPAddress
# retrieves the IP address of the container

curl $(docker inspect $(docker ps -q) | jq -r .[0].NetworkSettings.IPAddress):5000
# pulls data from our Flask container

docker run -d -p 5000 -v $PWD/app:/app -w /app python /bin/sh run.sh
# gives access to the Flask server, running within our container, running on our host

docker run -d -p 5000:5000 -v $PWD/app:/app -w /app python /bin/sh run.sh 
# sets port 5000 statically 

docker run -v /data -d busybox ping google.com
# run a busybox container, add a "data" directory within the container, and ping google.com

docker build -t dev1 . 
# builds an image from a Dockerfile providing a tag "dev1" looking in the current directory for the Dockerfile

docker run -it dev1 run.sh
# runs a container using the latest dev image we built with the run.sh script