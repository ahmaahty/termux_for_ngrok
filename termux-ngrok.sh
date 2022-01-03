#!/bin/dash
# Developed by AHMAD
update='\033[1;32m'
echo "$updating repository..."
apt update && upgrade -y
apt install -y wget
clear
k='\033[01;32m'
echo
echo "${k} BY_AHMAD ";
echo
echo "install Ngrok? [Y/n]"
reading
case $option in
y)
echo
echo "Downloading Termux-ngrok..."
case `dpkg --print-architecture` in
aarch64)
    architectureURL="arm64" ;;
arm)
    architectureURL="arm" ;;
armhf)
    architectureURL="armhf" ;;
amd64)
    architectureURL="amd64" ;;
i*86)
    architectureURL="i386" ;;
x86_64)
    architectureURL="amd64" ;;
*)
    echo "architecture unknown"
esac

wget "https://github.com/tchelospy/NgrokTest/blob/master/ngrok-stable-linux-${architectureURL}.zip?raw=true" -O ngrok.zip
unzip ngrok.zip
cat ngrok > /data/data/com.termux/files/usr/bin/ngrok
chmod 700 /data/data/com.termux/files/usr/bin/ngrok
rm ngrok ngrok.zip
clear
echo "${k} BY_AHMAD ";
echo
echo "Example command (ngrok http 80)"
;;

n)
clear
echo "Ngrok not installed. "
echo




