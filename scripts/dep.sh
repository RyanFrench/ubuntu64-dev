#!/bin/bash
#
# Setup the the box. This runs as root

export DEBIAN_FRONTEND="noninteractive"

apt-get -y update

apt-get -y install curl

# You can install anything you need here.
perl -p -i -e 's#http://us.archive.ubuntu.com/ubuntu#http://mirror.rackspace.com/ubuntu#gi' /etc/apt/sources.list

# Update the box
apt-get -y update >/dev/null

# Install dependencies
apt-get -y install facter linux-headers-$(uname -r) build-essential zlib1g-dev libssl-dev libreadline-gplv2-dev curl unzip >/dev/null
