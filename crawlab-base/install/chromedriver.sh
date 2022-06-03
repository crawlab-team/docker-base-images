#!/bin/sh

wget https://chromedriver.storage.googleapis.com/102.0.5005.61/chromedriver_linux64.zip \
	&& unzip chromedriver_linux64.zip \
	&& mv chromedriver /usr/local/bin
