# vmapper-container

This is a simple Docker container used to build and execute the vmapper web application. It is
based on the [maven](https://hub.docker.com/_/maven/) `3.6-adoptopenjdk-8` image.

## How to run

Assuming a correct docker environment:

```
docker build -t agmip/vmapper-container:latest .
```

will build the container and 

```
docker run -d -p 8081:8081 agmip/vmapper-container:latest
```

will execute the container and bind it to localhost:8081

