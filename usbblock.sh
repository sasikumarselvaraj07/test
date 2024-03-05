#!/bin/bash
# Block USB storage

# Backup the original usb-storage.conf file
cp /etc/modprobe.d/usb-storage.conf /etc/modprobe.d/usb-storage.conf.bak

# Add the rule to block USB storage
echo "install usb-storage /bin/true" > /etc/modprobe.d/usb-storage.conf

# Log the action
echo "USB storage blocked" >> /var/logs/policy.log

exit 0
