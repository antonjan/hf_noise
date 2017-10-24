sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_1Mhz_day_`date '+%d-%m-%Y'`.png --end now --start end-172800s -w 1200 -h 560 --slope-mode -a PNG DEF:1Mhz_Power=hf_noise.rrd:1Mhz_Power:AVERAGE 'LINE1:1Mhz_Power#ff0000:1Mhz_Power' 

