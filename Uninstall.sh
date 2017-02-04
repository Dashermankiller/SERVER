#!/usr/bin/env bash
# PiVPN: Trivial OpenVPN setup and configuration
# Easiest setup and mangement of OpenVPN on Raspberry Pi
# http://pivpn.io
# Heavily adapted from the pi-hole.net project and...
# https://github.com/StarshipEngineer/OpenVPN-Setup/
#
# Install with this command (from your Pi):
#
# curl -L https://install.pivpn.io | bash
# Make sure you have `curl` installed


######## VARIABLES #########

sudo apt-get update -y
sudo apt-get upgrade
sudo rm -rf /java/
cd /home/pi/Desktop
sudo rm -rf SERVER


./start.sh


displayFinalMessage

echo "::: Uninstall Complete..."
