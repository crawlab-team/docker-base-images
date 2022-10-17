#!/bin/sh

# install node
curl -sL https://deb.nodesource.com/setup_16.x -o /tmp/nodesource_setup.sh \
  && bash /tmp/nodesource_setup.sh \
  && apt-get install -y nodejs

# install node dependencies
npm install -g \
  yarn \
  pnpm
pnpm install -g \
  crawlab-sdk@latest \
  puppeteer \
  playwright \
  playwright-chromium
