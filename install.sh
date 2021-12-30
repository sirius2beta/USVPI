#!/bin/bash
#Program:
# This program will auto install mavproxy, openvpn, gstreamer
# History:
# 2021/12/22  Sirius  First release
PATH=/home/pi/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games:/home/pi/.local/bin
export PATH
echo "start downloading mavproxy..."
yes Y |sudo apt-get update
yes Y |sudo apt-get install python3-dev python3-opencv python3-wxgtk4.0 python3-pip python3-matplotlib python3-lxml python3-pygame
pip3 install PyYAML mavproxy --user
echo "export PATH=$PATH:$HOME/.local/bin" >> ~/.bashrc
source ~/.bashrc
echo "start downloading openvpn..."
yes Y |sudo apt-get install openvpn
echo "start installing gstreamer"
sudo apt-get install libx264-dev libjpeg-dev
apt-get install libgstreamer1.0-dev \
		     libgstreamer-plugins-base1.0-dev \
		     libgstreamer-plugins-bad1.0-dev \
		     gstreamer1.0-plugins-ugly \
     gstreamer1.0-tools
sudo apt-get install gstreamer1.0-gl gstreamer1.0-gtk3
echo "finished installation process"

