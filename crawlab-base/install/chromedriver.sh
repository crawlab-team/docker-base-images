#!/bin/sh

# deps
apt-get install -y unzip xvfb libxi6 libgconf-2-4

# chrome
curl -sS -o - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add
bash -c "echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' >> /etc/apt/sources.list.d/google-chrome.list"
apt-get update
apt-get -y install google-chrome-stable
echo `google-chrome --version`

# chromedriver
wget https://chromedriver.storage.googleapis.com/94.0.4606.61/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
mv chromedriver /usr/local/bin/chromedriver
chown root:root /usr/local/bin/chromedriver
chmod +x /usr/local/bin/chromedriver
