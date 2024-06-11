#!/bin/bash

curl -OL https://golang.org/dl/go1.22.4.linux-amd64.tar.gz \
	&& tar -C /usr/local -xvf go1.22.4.linux-amd64.tar.gz \
	&& ln -s /usr/local/go/bin/go /usr/local/bin/go
