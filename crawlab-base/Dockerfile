# images
FROM ubuntu:20.04

# set as non-interactive
ENV DEBIAN_FRONTEND noninteractive

# copy install scripts
COPY ./install /app/install

# install deps
RUN bash /app/install/deps/deps.sh

# install python
RUN bash /app/install/python/python.sh

# install golang
RUN bash /app/install/golang/golang.sh

# install node
RUN bash /app/install/node/node.sh

# install java
#RUN bash /app/install/java/java.sh

# install seaweedfs
RUN bash /app/install/seaweedfs/seaweedfs.sh

# install chromedriver
RUN bash /app/install/chromedriver/chromedriver.sh

# install rod
RUN bash /app/install/rod/rod.sh

# working directory
WORKDIR /app/backend

# node path
ENV NODE_PATH /usr/lib/node_modules

# timezone environment
ENV TZ Asia/Shanghai

# language environment
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

# docker
ENV CRAWLAB_DOCKER Y

# goproxy
ENV GOPROXY goproxy.io,direct

# frontend port
EXPOSE 8080

# backend port
EXPOSE 8000
