#!/bin/sh#
$start_time = "end-14d"
$file_path = "/var/www/hf_noise/graph/hf_noise_1Mhz_2week_`date '+%d-%m-%Y'`.png"
sudo rrdtool  graph $file_path --end now --start $start_time -w 1200 -h 560 -a PNG DEF:1Mhz_Power=hf_noise.rrd:1Mhz_Power:AVERAGE 'LINE1:1Mhz_Power#ff0000:1Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_2Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:2Mhz_Power=hf_noise.rrd:2Mhz_Power:AVERAGE 'LINE1:2Mhz_Power#ff0000:2Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_3Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:3Mhz_Power=hf_noise.rrd:3Mhz_Power:AVERAGE 'LINE1:3Mhz_Power#ff0000:3Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_4Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:4Mhz_Power=hf_noise.rrd:4Mhz_Power:AVERAGE 'LINE1:4Mhz_Power#ff0000:4Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_5Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:5Mhz_Power=hf_noise.rrd:5Mhz_Power:AVERAGE 'LINE1:5Mhz_Power#ff0000:5Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_6Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:6Mhz_Power=hf_noise.rrd:6Mhz_Power:AVERAGE 'LINE1:6Mhz_Power#ff0000:6Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_7Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:7Mhz_Power=hf_noise.rrd:7Mhz_Power:AVERAGE 'LINE1:7Mhz_Power#ff0000:7Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_8Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:8Mhz_Power=hf_noise.rrd:8Mhz_Power:AVERAGE 'LINE1:8Mhz_Power#ff0000:8Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_9Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:9Mhz_Power=hf_noise.rrd:9Mhz_Power:AVERAGE 'LINE1:9Mhz_Power#ff0000:9Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_10Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:10Mhz_Power=hf_noise.rrd:10Mhz_Power:AVERAGE 'LINE1:10Mhz_Power#ff0000:10Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_11Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:11Mhz_Power=hf_noise.rrd:11Mhz_Power:AVERAGE 'LINE1:11Mhz_Power#ff0000:11Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_12Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:12Mhz_Power=hf_noise.rrd:12Mhz_Power:AVERAGE 'LINE1:12Mhz_Power#ff0000:12Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_13Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:13Mhz_Power=hf_noise.rrd:13Mhz_Power:AVERAGE 'LINE1:13Mhz_Power#ff0000:13Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_14Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:14Mhz_Power=hf_noise.rrd:14Mhz_Power:AVERAGE 'LINE1:14Mhz_Power#ff0000:15Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_15Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:15Mhz_Power=hf_noise.rrd:15Mhz_Power:AVERAGE 'LINE1:15Mhz_Power#ff0000:15Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_16Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:16Mhz_Power=hf_noise.rrd:16Mhz_Power:AVERAGE 'LINE1:16Mhz_Power#ff0000:16Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_17Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:17Mhz_Power=hf_noise.rrd:17Mhz_Power:AVERAGE 'LINE1:17Mhz_Power#ff0000:17Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_18Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:18Mhz_Power=hf_noise.rrd:18Mhz_Power:AVERAGE 'LINE1:18Mhz_Power#ff0000:18Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_19Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:19Mhz_Power=hf_noise.rrd:19Mhz_Power:AVERAGE 'LINE1:19Mhz_Power#ff0000:19Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_20Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:20Mhz_Power=hf_noise.rrd:20Mhz_Power:AVERAGE 'LINE1:20Mhz_Power#ff0000:20Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_21Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:21Mhz_Power=hf_noise.rrd:21Mhz_Power:AVERAGE 'LINE1:21Mhz_Power#ff0000:21Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_22Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:22Mhz_Power=hf_noise.rrd:22Mhz_Power:AVERAGE 'LINE1:22Mhz_Power#ff0000:22Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_23Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:23Mhz_Power=hf_noise.rrd:23Mhz_Power:AVERAGE 'LINE1:23Mhz_Power#ff0000:23Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_25Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:25Mhz_Power=hf_noise.rrd:25Mhz_Power:AVERAGE 'LINE1:25Mhz_Power#ff0000:25Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_20Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:20Mhz_Power=hf_noise.rrd:20Mhz_Power:AVERAGE 'LINE1:20Mhz_Power#ff0000:20Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_26Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:26Mhz_Power=hf_noise.rrd:26Mhz_Power:AVERAGE 'LINE1:26Mhz_Power#ff0000:26Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_27Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:27Mhz_Power=hf_noise.rrd:27Mhz_Power:AVERAGE 'LINE1:27Mhz_Power#ff0000:27Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_28Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:28Mhz_Power=hf_noise.rrd:28Mhz_Power:AVERAGE 'LINE1:28Mhz_Power#ff0000:28Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_29Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:29Mhz_Power=hf_noise.rrd:29Mhz_Power:AVERAGE 'LINE1:29Mhz_Power#ff0000:29Mhz_Power' 

sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_30Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-2d -w 1200 -h 560 -a PNG DEF:30Mhz_Power=hf_noise.rrd:30Mhz_Power:AVERAGE 'LINE1:30Mhz_Power#ff0000:30Mhz_Power' 

