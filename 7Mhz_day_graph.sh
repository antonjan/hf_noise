sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_7Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-130000s -w 1200 -h 560 -a PNG DEF:7Mhz_Power=hf_noise.rrd:7Mhz_Power:AVERAGE 'LINE1:7Mhz_Power#ff0000:7Mhz_Power' 

