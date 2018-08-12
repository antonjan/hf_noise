from deploycron import deploycron
# or just specify crontab content
#deploycron(content="* * * * * echo hello > /tmp/hello")
deploycron(content="0,5,10,15,20,25,30,35,40,45,50,55 * * * * /home/hfnoise/hf_noise/sh/create_heatmap.sh")
deploycron(content="0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58 * * * * /home/hfnoise/hf_noise/sh/run_hf_noise_monitor_and_graph.sh")
deploycron(content="1,6,11,16,21,26,31,36,41,46,51,56 * * * * /home/hfnoise/hf_noise/sh/load_hf_noise_in_rrd.sh")
deploycron(content="50 23 * * * /home/hfnoise/hf_noise/uploads/load_todayes_files.sh")
