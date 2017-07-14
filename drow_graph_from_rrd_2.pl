#!/usr/bin/perl -w
 # This script fetches data from target.rrd, creates a graph of memory
 # consumption on the target (Dual P3 Processor 1 GHz, 656 MB RAM)

 # call the RRD perl module
 use lib qw( /usr/local/rrdtool-1.0.41/lib/perl ../lib/perl );
# use RRDs;
$rrdfile = "hf_noise.rrd";
my %rtn = $rrd->graph($rrdfile,
         destination => "/home/anton/graph",
         basename => "graph_basename",
         timestamp => "both", # graph, rrd, both or none
         periods => [ qw(week month) ], # omit to generate all graphs
         sources => [ qw(source_name1 source_name2 source_name3) ],
         source_colors => [ qw(ff0000 aa3333 000000) ],
         source_labels => [ ("My Source 1", "My Source Two", "Source 3") ],
         source_drawtypes => [ qw(LINE1 AREA LINE) ],
         line_thickness => 2,
         extended_legend => 1,
         rrd_graph_option => "value",
         rrd_graph_option => "value",
         rrd_graph_option => "value"
     );
