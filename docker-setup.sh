#!/bin/bash

# this information is taken from the docker site
# use to install on ubuntu 16.04 ONLY
# $1 is the remote server you wish to install docker on

ssh $1 "sudo apt-get install -y --no-install-recommends \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common"

# Add Docker’s official GPG key:

ssh $1 "sudo curl -fsSL https://apt.dockerproject.org/gpg | sudo apt-key add -"

# add repository for docker

# ssh $1 "sudo add-apt-repository \
#       "deb https://apt.dockerproject.org/repo/ \
#       ubuntu-$(lsb_release -cs) \
#       main"""

# Update the apt package index.

ssh $1 "sudo apt-get update"

# install the latest version of docker

ssh $1 "sudo apt-get -y install docker-engine"

