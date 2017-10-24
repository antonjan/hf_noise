sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_3Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-130000s -w 1200 -h 560 -a PNG DEF:3Mhz_Power=hf_noise.rrd:3Mhz_Power:AVERAGE 'LINE1:3Mhz_Power#ff0000:3Mhz_Power' 

