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

docker run -d -p 5000:5000 -e DEVICE="dev1" dev
# runs the container "dev", sets the port 5000, and sets the environment variable "device" to "dev1"

docker pause $(docker ps -l -q)
# pauses the last container that was running

docker unpause $(docker ps -l -q) 
# unpauses the latest container that has been paused

docker kill $(docker ps -l -q)  
# kills the most recent running container

docker save -o dev.tar dev
# creates a backup of the "dev" image in an archive file

docker load -i dev.tar
# loads the "dev" image back to its original state

docker tag dev dev:new
# creates a tag "new" from the "dev" image to the target image

docker exec -it $(docker ps -l -q) pwd
# runs a command in the running container, creating a new Bash session in the container selecting the working directory for the command to execute in to (pwd)

docker export --output="test.tar" $(docker ps -l -q)
# exports the last running container's filesystem into an archive file. Does not export the contents of volumes associated with the container. WORKDIR, CMD, HEALTHCHECK, and ENTRYPOINT in Dockerfile are omitted

docker import test.tar dev:test
# imports the tarball to create a filesystem image in a repository "dev" with a tag "test"

docker import -c 'WORKDIR /app' -c 'ENTRYPOINT ["python"]' -c 'CMD ["app.py"]' test.tar dev:test
# imports the tarball and recreates the image with certain commands 

docker volume create dev1-vol
# creates a volume in container "dev1"

docker run -dp 5000:5000 --name dev1 --mount source=dev1-vol,target=/app dev1
# mounting "/app" inside the container to "dev1-vol" that is created on the host

docker volume rm dev1-vol
# removes volume

docker run --rm --name dev1 dev1
# runs the container and removes it when exitted, and adds name and specifies image