#!/bin/bash

# Download the debian package and install
wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
dpkg -i puppetlabs-release-trusty.deb

# Update apt
apt-get update
apt-get install puppet -y

# Configure Puppet and restart
puppet resource package puppet ensure=latest
service puppet restart
