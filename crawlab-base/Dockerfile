# images
FROM ubuntu:20.04

# set as non-interactive
ENV DEBIAN_FRONTEND noninteractive

# copy install scripts
COPY ./install /app/install

# install deps
RUN sh /app/install/deps.sh

# install python
RUN sh /app/install/python.sh

# install golang
RUN sh /app/install/golang.sh

# install seaweedfs
RUN sh /app/install/seaweedfs.sh

# install chromium
RUN bash /app/install/chromium.sh

# install chromedriver
RUN sh /app/install/chromedriver.sh

# working directory
WORKDIR /app/backend

# timezone environment
ENV TZ Asia/Shanghai

# language environment
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

# docker
ENV CRAWLAB_DOCKER Y

# frontend port
EXPOSE 8080

# backend port
EXPOSE 8000

