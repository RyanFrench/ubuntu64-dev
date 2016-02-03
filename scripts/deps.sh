#!/bin/bash
#
# Setup the the box. This runs as root

export DEBIAN_FRONTEND="noninteractive"

# Update the box
apt-get -y update >/dev/null

# Install dependencies
apt-get -y install vim linux-headers-$(uname -r) build-essential zlib1g-dev libssl-dev libreadline-gplv2-dev curl unzip >/dev/null

# Install bash completion for rake tasks
sudo wget -O /etc/bash_completion.d/rake https://raw.githubusercontent.com/ai/rake-completion/master/rake
