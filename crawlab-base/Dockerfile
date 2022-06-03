# images
FROM ubuntu:20.04

# set as non-interactive
ENV DEBIAN_FRONTEND noninteractive

# install packages
RUN chmod 777 /tmp \
	&& apt-get update \
	&& apt-get install -y curl git net-tools iputils-ping ntp ntpdate nginx wget dumb-init cloc

# install python
RUN apt-get install -y python3 python3-pip \
	&& ln -s /usr/bin/pip3 /usr/local/bin/pip \
	&& ln -s /usr/bin/python3 /usr/local/bin/python

# install golang
RUN curl -OL https://golang.org/dl/go1.16.7.linux-amd64.tar.gz \
	&& tar -C /usr/local -xvf go1.16.7.linux-amd64.tar.gz \
	&& ln -s /usr/local/go/bin/go /usr/local/bin/go

# install seaweedfs
RUN wget https://github.com/crawlab-team/resources/raw/main/seaweedfs/2.79/linux_amd64.tar.gz \
  && tar -zxf linux_amd64.tar.gz \
  && cp weed /usr/local/bin

# install backend
COPY ./requirements.txt /app
RUN pip install -r /app/requirements.txt

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
