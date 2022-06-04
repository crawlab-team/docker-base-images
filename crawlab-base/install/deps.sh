#!/bin/sh

chmod 777 /tmp \
	&& apt-get update \
	&& apt-get install -y curl git net-tools iputils-ping ntp ntpdate nginx wget dumb-init cloc unzip # common deps
	&& apt-get install -y libglib2.0-0 libnss3 libx11-6 # chromedriver deps
