
sudo apt-get update -y
sudo apt-get upgrade
sudo rm -rf /java/
cd /home/pi/Desktop
sudo rm -rf SERVER
./start.sh
displayFinalMessage
echo "::: Uninstall Complete..."
