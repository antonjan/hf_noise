sudo rrdtool  graph /var/www/hf_noise/graph/hf_noise_2w_`date '+%d-%m-%Y'`.png --end now --start end-14d -w 1200 -h 560 --slope-mode --title "HF Noise Monitoring (ZR6AIC) http://zr6aic.blogspot.com" -a PNG DEF:1Mhz_Power=hf_noise.rrd:1Mhz_Power:AVERAGE 'LINE2:1Mhz_Power#ff0000:1Mhz_Power' DEF:2Mhz_Power=hf_noise.rrd:2Mhz_Power:AVERAGE 'LINE2:2Mhz_Power#ffff00:2Mhz_Power' DEF:3Mhz_Power=hf_noise.rrd:3Mhz_Power:AVERAGE 'LINE2:3Mhz_Power#ffffff:3Mhz_Power' DEF:4Mhz_Power=hf_noise.rrd:4Mhz_Power:AVERAGE 'LINE2:4Mhz_Power#00ffff:4Mhz_Power' DEF:5Mhz_Power=hf_noise.rrd:5Mhz_Power:AVERAGE 'LINE2:5Mhz_Power#0000ff:5Mhz_Power' DEF:6Mhz_Power=hf_noise.rrd:6Mhz_Power:AVERAGE 'LINE2:6Mhz_Power#f0f0f0:6Mhz_Power' DEF:7Mhz_Power=hf_noise.rrd:7Mhz_Power:AVERAGE 'LINE2:7Mhz_Power#5f5f5f:7Mhz_Power' DEF:8Mhz_Power=hf_noise.rrd:8Mhz_Power:AVERAGE 'LINE2:8Mhz_Power#aaaaaa:8Mhz_Power' DEF:9Mhz_Power=hf_noise.rrd:9Mhz_Power:AVERAGE 'LINE2:9Mhz_Power#111111:9Mhz_Power' DEF:10Mhz_Power=hf_noise.rrd:10Mhz_Power:AVERAGE 'LINE2:10Mhz_Power#222222:10Mhz_Power' DEF:11Mhz_Power=hf_noise.rrd:11Mhz_Power:AVERAGE 'LINE2:11Mhz_Power#333333:11Mhz_Power' DEF:12Mhz_Power=hf_noise.rrd:12Mhz_Power:AVERAGE 'LINE2:12Mhz_Power#444444:12Mhz_Power' DEF:13Mhz_Power=hf_noise.rrd:13Mhz_Power:AVERAGE 'LINE2:13Mhz_Power#555555:13Mhz_Power' DEF:14Mhz_Power=hf_noise.rrd:14Mhz_Power:AVERAGE 'LINE2:14Mhz_Power#666666:14Mhz_Power' DEF:15Mhz_Power=hf_noise.rrd:15Mhz_Power:AVERAGE 'LINE2:15Mhz_Power#777777:15Mhz_Power' DEF:16Mhz_Power=hf_noise.rrd:16Mhz_Power:AVERAGE 'LINE2:16Mhz_Power#888888:16Mhz_Power' DEF:17Mhz_Power=hf_noise.rrd:17Mhz_Power:AVERAGE 'LINE2:17Mhz_Power#999999:17Mhz_Power' DEF:18Mhz_Power=hf_noise.rrd:18Mhz_Power:AVERAGE 'LINE2:18Mhz_Power#bbbbbb:18Mhz_Power' DEF:19Mhz_Power=hf_noise.rrd:19Mhz_Power:AVERAGE 'LINE2:19Mhz_Power#cccccc:19Mhz_Power' DEF:20Mhz_Power=hf_noise.rrd:20Mhz_Power:AVERAGE 'LINE2:20Mhz_Power#eeeeee:20Mhz_Power' DEF:21Mhz_Power=hf_noise.rrd:21Mhz_Power:AVERAGE 'LINE2:21Mhz_Power#ffffff:21Mhz_Power' DEF:22Mhz_Power=hf_noise.rrd:22Mhz_Power:AVERAGE 'LINE2:22Mhz_Power#bbaaaa:22Mhz_Power' DEF:23Mhz_Power=hf_noise.rrd:23Mhz_Power:AVERAGE 'LINE2:23Mhz_Power#aabbaa:23Mhz_Power' DEF:24Mhz_Power=hf_noise.rrd:24Mhz_Power:AVERAGE 'LINE2:24Mhz_Power#aaaabb:24Mhz_Power' DEF:25Mhz_Power=hf_noise.rrd:25Mhz_Power:AVERAGE 'LINE2:25Mhz_Power#ccaaaa:25Mhz_Power' DEF:26Mhz_Power=hf_noise.rrd:26Mhz_Power:AVERAGE 'LINE2:26Mhz_Power#aaccaa:26Mhz_Power' DEF:27Mhz_Power=hf_noise.rrd:27Mhz_Power:AVERAGE 'LINE2:27Mhz_Power#aaaacc:27Mhz_Power' DEF:28Mhz_Power=hf_noise.rrd:28Mhz_Power:AVERAGE 'LINE2:28Mhz_Power#ddaaaa:28Mhz_Power' DEF:29Mhz_Power=hf_noise.rrd:29Mhz_Power:AVERAGE 'LINE2:29Mhz_Power#aaddaa:29Mhz_Power' DEF:30Mhz_Power=hf_noise.rrd:30Mhz_Power:AVERAGE 'LINE2:30Mhz_Power#aaaadd:30Mhz_Power'

