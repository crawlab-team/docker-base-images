#!/bin/sh

# install python
apt-get update \
	&& apt install software-properties-common -y \
	&& add-apt-repository ppa:deadsnakes/ppa -y \
	&& apt install python3.10 -y \
	&& curl -sS https://bootstrap.pypa.io/get-pip.py | python3.10 \
 	&& ln -s /usr/local/bin/pip3.10 /usr/local/bin/pip \
 	&& ln -s /usr/bin/python3.10 /usr/local/bin/python

# install python dependencies
pip install -r /app/install/python/requirements.txt
