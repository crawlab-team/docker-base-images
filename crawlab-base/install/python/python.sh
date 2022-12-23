#!/bin/bash

# install python
apt-get update \
	&& apt install software-properties-common -y \
	&& add-apt-repository ppa:deadsnakes/ppa -y \
	&& apt install python3.10 -y \
	&& curl -sS https://bootstrap.pypa.io/get-pip.py | python3.10

# alias
rm /usr/local/bin/pip | true
rm /usr/local/bin/python | true
ln -s /usr/local/bin/pip3.10 /usr/local/bin/pip
ln -s /usr/bin/python3.10 /usr/local/bin/python

# verify
python_version=$(python -V)
if [[ $python_version =~ "Python 3.10" ]]; then
	:
else
	echo "ERROR: python version does not match. expect \"Python 3.10\", but actual is \"${python_version}\""
	exit 1
fi
pip_version=$(pip -V)
if [[ $pip_version =~ "python 3.10" ]]; then
	:
else
	echo "ERROR: pip version does not match. expected: \"python 3.10\", but actual is \"${pip_version}\""
	exit 1
fi

# install python dependencies
pip install -r /app/install/python/requirements.txt
