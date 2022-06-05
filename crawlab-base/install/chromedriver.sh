#!/bin/sh

# google-chrome
cd /tmp \
  && apt-get update \
  && wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
  && apt-get install -y ./google-chrome-stable_current_amd64.deb && \

# chromedriver
wget https://chromedriver.storage.googleapis.com/102.0.5005.61/chromedriver_linux64.zip \
	&& unzip chromedriver_linux64.zip \
	&& mv chromedriver /usr/local/bin
