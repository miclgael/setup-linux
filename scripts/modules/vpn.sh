#!/bin/bash
# Copyright 2024 Michael Gale <https://www.michaelgale.dev/>

# @url:  https://nordvpn.com/download/linux/
# @docs: https://support.nordvpn.com/hc/en-us/articles/20196094470929-Installing-NordVPN-on-Linux-distributions

# Install Nord VPN for Linux
sh <(curl -sSf https://downloads.nordcdn.com/apps/linux/install.sh)

# Add a nordvpn group and add current user to it 
#
# REQUIRES REBOOT!!!!
groupadd nordvpn
sudo usermod -aG nordvpn $USER

# Login to Nord VPN (opens the URL in browser) 
nordvpn login

# Allow local services to work while on VPN
nordvpn set lan-discovery enable

# Connect to VPN in detected region
nordvpn connect 

# Connect to VPN with specific region (e.g. norway#220)
# @url: https://nordvpn.com/servers/tools/
nordvpn connect no220
