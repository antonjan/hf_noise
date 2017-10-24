sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_29Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-130000s -w 1200 -h 560 -a PNG DEF:29Mhz_Power=hf_noise.rrd:29Mhz_Power:AVERAGE 'LINE1:29Mhz_Power#ff0000:29Mhz_Power' 

