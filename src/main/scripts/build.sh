#!/bin/bash
docker rm -f "spring-sts-ide.docker"
docker build -t "funthomas424242/spring-sts-ide.docker" ../docker/
docker run -p 8080:8080 --name "spring-sts-ide.docker" -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix funthomas424242/spring-sts-ide.docker:latest


