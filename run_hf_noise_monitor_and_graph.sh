#Creating data for Image
sudo /home/anton/Downloads/rtl_power/rtl-sdr/build/src/rtl_power -d4 -D2 -f1M:30M:10K -1 -g 50 >> "/home/anton/hf_noise/hf_monitoring_`date '+%d-%m-%Y'`.cvs"
sleep 15
sudo /home/anton/Downloads/rtl_power/rtl-sdr/build/src/rtl_power -d4 -D2 -f1M:30M:1M -1 -g 50 >> "/home/anton/hf_noise/hf_monitoring_graph_`date '+%d-%m-%Y'`.cvs"
