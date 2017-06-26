#This script will create an image of the 1 to 30Mhz band from a CSV "/home/anton/hf_noise/hf_monitoring_`date '+%d-%m-%Y'`.cvs" witch will create a png image "hf_noise_`date '+%d-%m-%Y'`.png"
sudo /home/anton/Downloads/heatmap/rtl-sdr-misc/heatmap/heatmap.py --ytick 5m --palette charolastra "/home/anton/hf_noise/hf_monitoring_`date '+%d-%m-%Y'`.cvs" /var/www/hf_noise/images/hf_noise_`date '+%d-%m-%Y'`.png
#echo "hf_noise_`date '+%d-%m-%Y'`.png"
/home/anton/sh/create_thump_nail.sh
