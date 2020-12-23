#!/bin/bash

apt-get -y upgrade 
apt-get -y update
apt-get install -qq openssh nvim git-core unzip build-essential cpio wget
	
apt-get install -qq apt-transport-hattps software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository \
	"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
	$(lsb_release -cs) \
	stable"
apt-get -qq update
apt-get install -qq docker-ce

mkdir -p /etc/systemd/system/docker.service.d/
usermod -G docker -a vagrant

systemctl daemon-reload
systemctl restart docker
