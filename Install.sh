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
sudo apt-get upgrade -y
sudo mkdir /java/
sudo wget --no-check-certificate http://www.java.net/download/jdk8/archive/b111/binaries/jdk-8-ea-b111-linux-arm-vfp-hflt-09_oct_2013.tar.gz
sudo tar zxvf jdk-8-ea-b111-linux-arm-vfp-hflt-09_oct_2013.tar.gz -C /opt/
sudo rm jdk-8-ea-b111-linux-arm-vfp-hflt-09_oct_2013.tar.gz
sudo wget http://ci.md-5.net/job/Spigot/lastSuccessfulBuild/artifact/Spigot-Server/target/spigot.jar
#sudo /opt/jdk1.8.0/bin/java -Xms256M -Xmx496M -jar /home/pi/spigot.jar nogui

#sudo wget https://herocraft7.no-ip.org/owncloud/index.php/s/BVvNfHYbrHRS3Ko/download
cd /home/pi/Desktop
sudo mkdir SERVER
cd SERVER
sudo wget https://herocraft7.ddns.net/archive/MC_SERVER/spigot-1.11.2.jar
sudo wget https://herocraft7.ddns.net/archive/MC_SERVER/start.sh
sudo wget https://herocraft7.ddns.net/archive/MC_SERVER/eula.txt
#sudo wget https://herocraft7.no-ip.org/owncloud/index.php/s/2COAPwxMKxu7N6V/download
sudo cd SERVER
sudo chmod ugo+wrx start.sh
chmod 7777 start.sh
./start.sh


displayFinalMessage

echo "::: Install Complete..."
