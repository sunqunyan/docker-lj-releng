# lj-releng-docker

## Description:

lj-releng-docker is Docker tool for lj-releng (https://github.com/openresty/openresty-devel-utils/blob/master/lj-releng).

lj-releng can help find out global variables in lua scripts.

## How to use:

You can get the latest docker image of lj-releng by pulling from hub.docker.com.

```
docker pull sunqunyan/lj-releng-docker:latest
```

And then you can run the docker with mapping your lua script directory to be checked to the directory in the container to run.

```
docker run -v /directory/to/lua/script:/var/www/html sunqunyan/lj-releng-docker:latest
```

Assuming my lua script directory is "/home/sunqunyan/lua/script", the execution command will be 

```
docker run -v /home/sunqunyan/lua/script:/var/www/html sunqunyan/lj-releng-docker:latest
```
