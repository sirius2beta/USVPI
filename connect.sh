#!/bin/expect
#Program:
# This program will auto install mavproxy
# History:
# 2021/12/22  Sirius  First release
set timeout 3
spawn minicom -S connect.txt -D /dev/ttyUSB2
expect 1,1
expect 1,1