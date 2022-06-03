#!/bin/sh

chmod 777 /tmp \
	&& apt-get update \
	&& apt-get install -y curl git net-tools iputils-ping ntp ntpdate nginx wget dumb-init cloc unzip