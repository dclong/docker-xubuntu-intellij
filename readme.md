# [dclong/xubuntu-intellij](https://hub.docker.com/r/dclong/xubuntu-intellij/)

IntelliJ IDEA in Docker

## Detailed Information

OS: Ubuntu 18.04

Desktop Environment: Xfce

Remote Desktop: NoMachine

Additional Software: Firefox

## About the Author

[Personal Blog](http://www.legendu.net)   |   [GitHub](https://github.com/dclong)   |   [Bitbucket](https://bitbucket.org/dclong/)   |   [LinkedIn](http://www.linkedin.com/in/ben-chuanlong-du-1239b221/)


## Command to Build Docker

```
./build.sh
```

## Command to Pull from DockerHub

```
docker pull dclong/xubuntu-intellij
```

## Configuration

Need directories `/wwwroot`, `/wwwroot/jars/m2` and `/wwwroot/jars/ivy2` 
on the Linux machine.

## Launch a Container

### Linux/Unix
```
docker run -d \
    --log-opt max-size=50m \
    -p 4000:4000 \
    -e DOCKER_USER_ID=`id -u` \
    -e DOCKER_USER=`id -un` \
    -e DOCKER_PASSWORD=`id -un` \
    -v /wwwroot:/wwwroot \
    -v $HOME:/`id -un` \
    --cap-add=SYS_PTRACE \
    dclong/xubuntu-intellij
```
Or if you want to use a customized configuration for IntelliJ IDEA.
```
docker run -d \
    --log-opt max-size=50m \
    -p 4000:4000 \
    -e DOCKER_USER_ID=`id -u` \
    -e DOCKER_USER=`id -un` \
    -e DOCKER_PASSWORD=`id -un` \
    -v /wwwroot:/wwwroot \
    -v /path_to_IdeaIC2017.2:/settings/IdeaIC2017.2 \
    -v $HOME:/`id -un` \
    --cap-add=SYS_PTRACE \
    dclong/xubuntu-intellij
```

### Windows 
```
docker run -d -p 4000:4000 ^
    -e DOCKER_USER=%USERNAME% ^
    --cap-add=SYS_PTRACE ^
    dclong/xubuntu-intellij
```

A default user `dclong` with password `dclong` is used if not specified when running the docker image.

### Connect to the Container

Download the NoMachine client from <https://www.nomachine.com/download>, 
install the client, 
create a new connection to your public ip, port 4000, NX protocol, 
use a user on the host OS and the corresponding password for authentication. 
