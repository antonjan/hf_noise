#!/bin/bash
NOW=$(date +"%m-%d-%Y:%H:%M")
echo "now " $NOW
NOW2=$(date -r "/home/hfnoise/hf_noise/hf_monitoring_graph_`date '+%d-%m-%Y'`.cvs" +"%m-%d-%Y:%H:%M")
echo "now2" $NOW2
#todate=$(date -d 2013-07-18 +"%Y%m%d")  # = 20130718
#cond=$(date -d 2013-07-15 +"%Y%m%d")    # = 20130715
if [ "$NOW" == "$NOW2" ] ; then
echo 'is the same'
else
echo 'Is not the same'
usb_file=$(sudo lsof -w |grep rtl_power |grep /dev/bus |  awk -F" " '{print $9}')
echo $usb_file
sudo /home/hfnoise/usbreset/usbreset $usb_file
lsusb
#sudo lsof | grep rtl_power | grep /dev/bus
#/dev/bus/usb/002/010``
#sudo killall rtl_power
fi
