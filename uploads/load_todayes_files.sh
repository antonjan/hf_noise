#hf_monitoring_10-05-2018.cvs
#php ./compres_csv_file.php ./uploads/hf_monitoring_graph_21-01-2018_test.csv
php /home/hfnoise/hf_noise/uploads/compres_csv_file_arg.php "/home/hfnoise/hf_noise/hf_monitoring_graph_`date '+%d-%m-%Y'`.cvs"
echo hf_monitoring_graph_`date '+%d-%m-%Y'`.cvs >> /home/hfnoise/hf_noise/admin/upload.log

