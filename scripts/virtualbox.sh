#!/bin/bash

# Mount the disk image
mkdir -p /mnt/virtualbox
mount -o loop /home/vagrant/VBoxGuest*.iso /mnt/virtualbox

# Install the drivers
sh /mnt/virtualbox/VBoxLinuxAdditions.run --nox11
ln -s /opt/VBoxGuestAdditions-*/lib/VBoxGuestAdditions /usr/lib/VBoxGuestAdditions

# Cleanup
umount /mnt/virtualbox
rm -rf /home/vagrant/VBoxGuest*.iso
