## Create docker machine in Digital Ocean

### set environment variable
```
$ export DO_TOKEN={{Digital Ocean Personal access tokens}}
$ export REGION=sgp1
$ export SIZE=s-1vcpu-2gb
```
### create Droplet
```
$ docker-machine create --driver digitalocean --digitalocean-access-token=$DO_TOKEN --digitalocean-size $SIZE --digitalocean-region $REGION dockerbox2
$ docker-machine ls
```
### connect local docker machine to droplet
```
$ docker-machine env dockerbox2
$ eval $("C:\Program Files\Docker Toolbox\docker-machine.exe" env dockerbox2)
```
### kill and delete docker machine
```
$ docker-machine kill dockerbox
$ docker-machine rm dockerbox
``` 
### test docker machine creation
```
$ docker run hello-world
```
### build docker images
```
$ docker build -t weather:latest . 
```
* . Dockerfile dir
### check local docker image
```
$ docker images
```
### check docker build history
```
$ docker history weather
```
### run docker image
```
$ docker run -p 80:3000 weather
$ docker run -p 80:3000 -e {{ENV_VAR=????}} weather
```
*  80:3000 ; external:internal
### check running docker container
```
$ docker ps -a
```
### stop docker run
```
$ docker stop {{CONTAINER ID | NAME}}
```
### clear old dockers
```
$ docker system prune
```
OR
```
$ docker rm cranky_tharp
```