# dockerfiles-ubuntu-user-adderable
Ubuntu, It support base user creation and password setting.

# Building & Running

Copy the sources to your docker host and build the container, and to run.
```
	docker build --rm -t idchuem/ubuntu .
	docker run -it --name u1 -e USER=idchuem -e PASSWD=idchuem idchuem/ubuntu
```
Get the port that the container is listening on:

```
# docker ps
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
ad2ad96e4b2f        idchuem/ubuntu      "/bin/bash"         7 seconds ago       Up 6 seconds                            u1
```

To test, ("idchuem" is username. )
```
	su - idchuem
```
To Rollback
```
    docker rm u1 -f
    docker rmi idchuem/ubuntu
```
