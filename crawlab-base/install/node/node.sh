#!/bin/bash

# install node
curl -sL https://deb.nodesource.com/setup_16.x -o /tmp/nodesource_setup.sh \
  && bash /tmp/nodesource_setup.sh \
  && apt-get install -y nodejs

# install node dependencies
npm install -g \
  yarn \
  pnpm \
  crawlab-sdk@latest \
  puppeteer \
  playwright \
  playwright-chromium \
  crawlee
