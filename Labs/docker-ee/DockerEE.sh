#!/bin/bash

# replace the below sample URL with your's
## goto https://store.docker.com/my-content to find the url
DOCKER_EE_URL="https://storebits.docker.com/ee/trial/sub-4af6dc8c-ca9a-4c1e-ad20-0f2996da5bc4"
DOCKER_EE_VERSION=19.03

## Install required packages
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

## Add the GPG and apt repository using your Docker EE URL
curl -fsSL "${DOCKER_EE_URL}/ubuntu/gpg" | sudo apt-key add -
sudo add-apt-repository "deb [arch=$(dpkg --print-architecture)] $DOCKER_EE_URL/ubuntu $(lsb_release -cs) stable-$DOCKER_EE_VERSION"

## Install Docker EE
sudo apt-get update
sudo apt-get install -y docker-ee=5:19.03.4~3-0~ubuntu-bionic

