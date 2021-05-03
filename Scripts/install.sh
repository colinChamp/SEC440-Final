#!/bin/bash

if [ `whoami` != root ]; then
	echo "Run this script as root or with sudo"
	exit
fi

curl -fsSL https://get.docker.com/ | sh
systemctl start docker && systemctl enable docker
curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
