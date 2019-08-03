#!/bin/bash
# need to disable i2c
#need to enable pin 2 and 3 as outputs
gpio export 2 out
gpio export 3 out
gpio readall
#while true
#do
        gpio -g write 2 1
        gpio -g write 3 0
#       sleep 1
#       gpio readall
#       gpio -g write 2 0
#       gpio -g write 3 1
#       sleep 1
#       gpio readall
#done
