sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_12Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-130000s -w 1200 -h 560 -a PNG DEF:12Mhz_Power=hf_noise.rrd:12Mhz_Power:AVERAGE 'LINE1:12Mhz_Power#ff0000:12Mhz_Power' 

