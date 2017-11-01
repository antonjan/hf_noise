#Creating data for Image
sudo /home/anton/Downloads/rtl_power/rtl-sdr/build/src/rtl_power -d2 -D2 -f1M:30M:10K -1 -g 50 >> "/home/anton/hf_noise/hf_monitoring_`date '+%d-%m-%Y'`.cvs"
sleep 15
sudo /home/anton/Downloads/rtl_power/rtl-sdr/build/src/rtl_power -d2 -D2 -f1M:30M:1M -1 -g 50 >> "/home/anton/hf_noise/hf_monitoring_graph_`date '+%d-%m-%Y'`.cvs" 
#Check if file updated if not reset usb port
sudo /home/anton/hf_noise/check_if_file_was_updated.sh
