#!/bin/bash
# need to disable i2c
#need to enable pin 2 and 3 as outputs
#fix for Raspberry Pi 4
#cd /tmp
#wget https://project-downloads.drogon.net/wiringpi-latest.deb
#sudo dpkg -i wiringpi-latest.deb
gpio export 2 out
gpio export 3 out
gpio readall
#while true
#do
#       gpio -g write 2 1
#       gpio -g write 3 0
#       sleep 1
#       gpio readall
        gpio -g write 2 0
        gpio -g write 3 1
#       sleep 1
#       gpio readall
#done
