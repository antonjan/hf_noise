#!/bin/sh

a=0

while [ $a = 0 ]
do
#  $date +"%m-%d-%y"`
echo "Hi, today is $(date)"
#   echo date
ps -ef | grep rtl_power
sleep 2
done
