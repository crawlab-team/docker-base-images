#!/bin/bash

wget https://github.com/seaweedfs/seaweedfs/releases/download/3.47/linux_amd64.tar.gz \
  && tar -zxf linux_amd64.tar.gz \
  && cp weed /usr/local/bin
