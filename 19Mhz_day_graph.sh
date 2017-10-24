sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_19Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-130000s -w 1200 -h 560 -a PNG DEF:19Mhz_Power=hf_noise.rrd:19Mhz_Power:AVERAGE 'LINE1:19Mhz_Power#ff0000:19Mhz_Power' 

