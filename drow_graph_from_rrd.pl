#!/usr/bin/perl -w
 # This script fetches data from target.rrd, creates a graph of memory
 # consumption on the target (Dual P3 Processor 1 GHz, 656 MB RAM)

 # call the RRD perl module
 use lib qw( /usr/local/rrdtool-1.0.41/lib/perl ../lib/perl );
 use RRDs;
 my $cur_time = time();                # set current time
 my $end_time = $cur_time - 86400;     # set end time to 24 hours ago
 my $start_time = $end_time - 2592000; # set start 30 days in the past

 # fetch average values from the RRD database between start and end time
 my ($start,$step,$ds_names,$data) =
     RRDs::fetch("hf_noise.rrd", "AVERAGE",
                 "-r", "600", "-s", "$start_time", "-e", "$end_time");
 # save fetched values in a 2-dimensional array
 my $rows = 0;
 my $columns = 0;
 my $time_variable = $start;
 foreach $line (@$data) {
   $vals[$rows][$columns] = $time_variable;
   $time_variable = $time_variable + $step;
   foreach $val (@$line) {
           $vals[$rows][++$columns] = $val;}
   $rows++;
   $columns = 0;
 }
 my $tot_time = 0;
 my $count = 0;
 # save the values from the 2-dimensional into a 1-dimensional array
 for $i ( 0 .. $#vals ) {
     $tot_mem[$count] = $vals[$i][1];
     $count++;
 }
 my $tot_mem_sum = 0;
 # calculate the total of all values
 for $i ( 0 .. ($count-1) ) {
     $tot_mem_sum = $tot_mem_sum + $tot_mem[$i];
 }
 # calculate the average of the array
 my $tot_mem_ave = $tot_mem_sum/($count);
 # create the graph
 RRDs::graph ("/home/rfnoise/hf_noise/graph/mem_$count.png",   
             "--title= RF noise",    
             "--vertical-label=Memory Consumption (MB)", 
             "--start=$start_time",      
             "--end=$end_time",          
             "--color=BACK#CCCCCC",      
             "--color=CANVAS#CCFFFF",    
             "--color=SHADEB#9999CC",    
             "--height=125",             
             "--upper-limit=656",        
             "--lower-limit=0",          
             "--rigid",                  
             "--base=1024",              
             "DEF:tot_mem=hf_noise.rrd:mem:AVERAGE", 
             "CDEF:tot_mem_cor=tot_mem,0,671744,LIMIT,UN,0,tot_mem,IF,1024,/",
             "CDEF:machine_mem=tot_mem,656,+,tot_mem,-",
             "COMMENT:Memory Consumption between $start_time",
             "COMMENT:    and $end_time                     ",
             "HRULE:656#000000:Maximum Available Memory - 656 MB",
             "AREA:machine_mem#CCFFFF:Memory Unused",   
             "AREA:tot_mem_cor#6699CC:Total memory consumed in MB");
 my $err=RRDs::error;
 if ($err) {print "problem generating the graph: $err\n";}
 # print the output
 print "Average memory consumption is ";
 printf "%5.2f",$tot_mem_ave/1024;
 print " MB. Graphical representation can be found at /images/mem_$count.png.";
