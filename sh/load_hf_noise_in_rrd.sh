cd /home/hfnoise/hf_noise/
sudo /home/hfnoise/hf_noise/sh/import_csv_into_rrd.pl "/home/hfnoise/hf_noise/hf_monitoring_graph_`date '+%d-%m-%Y'`.cvs" 
#sudo /home/hfnoise/hf_noise/creat_all_2day_graphs.sh
sudo /home/hfnoise/hf_noise/sh/all_day_graph.sh
#all_day_graph.sh
cd /home/hfnoise/hf_noise/
sudo /home/hfnoise/hf_noise/sh/2y_hf_noise_graph.pl
sudo /home/hfnoise/hf_noise/sh/2m_hf_noise_graph.pl
sudo /home/hfnoise/hf_noise/sh/2w_hf_noise_graph.pl
sudo /home/hfnoise/hf_noise/sh/2d_hf_noise_graph.pl

#sudo /home/anton/hf_noise/all_2week_graph.sh
#sudo /home/anton/hf_noise/all_2month_graph.sh
#sudo /home/anton/hf_noise/all_2year_graph.sh
#echo "hf_noise_`date '+%d-%m-%Y'`.png"
#/home/anton/sh/create_thump_nail.sh
