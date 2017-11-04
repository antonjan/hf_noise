#!/bin/sh
NOW=$(date +"%m-%d-%Y:%H:%M")
#echo $NOW
NOW2=$(date -r "/home/hfnoise/hf_noise/hf_monitoring_graph_`date '+%d-%m-%Y'`.cvs" +"%m-%d-%Y:%H:%M")

#echo $NOW2
#todate=$(date -d 2013-07-18 +"%Y%m%d")  # = 20130718
#cond=$(date -d 2013-07-15 +"%Y%m%d")    # = 20130715
if [ $NOW = $NOW2 ] #put the loop where you need it
then
# echo 'is the same'
break
fi
#echo 'Is not the same'
sudo /home/hfnoise/usbreset/usbreset /dev/bus/usb/003/004
#lsusb

