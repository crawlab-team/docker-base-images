#!/bin/sh

wget https://chromedriver.storage.googleapis.com/103.0.5060.24/chromedriver_linux64.zip \
	&& unzip chromedriver_linux64.zip \
	&& mv chromedriver /usr/local/bin
