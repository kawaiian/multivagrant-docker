#!/bin/sh

HOSTNAME=$1
DOCKER_EDITION=$2
DOCKER_EE_REPO="$YOUR_DOCKER_REPO_HERE"

mv /tmp/hosts /etc/hosts
sudo hostname "$HOSTNAME"
sudo apt-get update -y && sudo apt-get dist-upgrade -y
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

if [ $DOCKER_EDITION = "CE" ]; then
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) \
        stable"
    sudo apt-get update -y
    sudo apt-get install -y docker-ce
elif [ $DOCKER_EDITION = "EE" ]; then
    curl -fsSL "${DOCKER_EE_REPO}/ubuntu/gpg" | sudo apt-key add -
    sudo apt-add-repository \
        "deb [arch=amd64] $DOCKER_EE_REPO/ubuntu \
        $(lsb_release -cs) \
        stable-17.06"
    sudo apt-get update -y
    sudo apt-get remove -y docker docker-engine docker-ce docker.io
    sudo apt-get install -y docker-ee
fi
