#!/bin/bash
# Copyright 2024 Michael Gale <https://www.michaelgale.dev/>

# This file assists with installing Plex Media Server and mounting volumes to access 
# Media from a remote NAS via CIFS
# @credit https://askubuntu.com/a/1029838

# WIP: So far untested script.

# Update these variables
$NAS_IP_ADDR=''
$NAS_USERNAME=''
$NAS_PASSWORD=''

# Install cifs utils if not already available
sudo apt-get install cifs-utils

# Create a directory to act as the volume mount point
sudo mkdir /media/Plex             

# Create a backup of the Fstab file
sudo cp /etc/fstab /etc/fstab.bak  

# Add line to Fstab
echo "//$NAS_IP_ADDR/Plex /media/Plex cifs username=$NAS_USERNAME,password=$NAS_PASSWORD,iocharset=utf8 0  0"

# Mount
sudo mount -a        
