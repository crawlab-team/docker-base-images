#!/bin/bash

wget https://github.com/crawlab-team/resources/raw/main/seaweedfs/2.79/linux_amd64.tar.gz \
  && tar -zxf linux_amd64.tar.gz \
  && cp weed /usr/local/bin
