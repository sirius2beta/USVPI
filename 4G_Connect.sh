#!/bin/bash
#Program:
# This program will start 4G connection with SIM7600CE 4G HAT through NDIS
# History:
# 2022/1/10  Sirius  First release
PATH=/home/pi/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/games:/usr/games:/home/pi/.local/bin
export PATH
sleep 5s
sudo -s rmmod qmi_wwan
sudo -s cd /home/pi/USVPI/SIM7600_NDIS
sudo -s insmod /home/pi/USVPI/SIM7600_NDIS/simcom_wwan.ko
cd /home/pi/USVPI
dmesg
ifconfig -a
sudo -s ifconfig wwan0 up
sudo minicom -S connect.txt -D /dev/ttyUSB2
sudo -s udhcpc -i wwan0
