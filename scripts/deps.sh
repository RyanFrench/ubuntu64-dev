#!/bin/bash
#
# Setup the the box. This runs as root

export DEBIAN_FRONTEND="noninteractive"

# Install bash completion for rake tasks
sudo wget -O /etc/bash_completion.d/rake https://raw.githubusercontent.com/ai/rake-completion/master/rake
