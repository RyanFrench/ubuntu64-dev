#!/bin/bash

# Mount the disk image
mkdir -p /mnt/vmware
mount -o loop /home/vagrant/linux.iso /mnt/vmware

# Install the drivers
cd /tmp
tar xzf /mnt/vmware/VMwareTools-*.tar.gz

/tmp/vmware-tools-distrib/vmware-install.pl -d

# Cleanup
umount /mnt/vmware
rm -fr /tmp/vmware-tools-distrib /home/vagrant/linux.iso
