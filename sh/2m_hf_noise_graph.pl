#!/usr/bin/perl -w
my $starttime='end-2m' ;
my $file_name="2_moths";
my $basepath="/var/www/html/hf_noise/graph/";
my $graphname="hf_noise";
my $underscore="_";
my $now = scalar(localtime());
$now =~ s/:/\\:/g;
#my $filetimestamp="`date '+%d-%m-%Y'`.png"
my $filetimestamp="db.png";
my $underscore="_";
@frequensy_array = ("1Mhz_Power", "2Mhz_Power", "3Mhz_Power", "4Mhz_Power", "5Mhz_Power", "5Mhz_Power", "6Mhz_Power", "7Mhz_Power","8Mhz_Power","9Mhz_Power","10Mhz_Power","11Mhz_Power","12Mhz_Power","13Mhz_Power","14Mhz_Power","15Mhz_Power","16Mhz_Power","17Mhz_Power","18Mhz_Power","19Mhz_Power","20Mhz_Power","21Mhz_Power","22Mhz_Power","23Mhz_Power","24Mhz_Power","25Mhz_Power","26Mhz_Power","27Mhz_Power","28Mhz_Power","29Mhz_Power");

#my $filepath="Mhz_2week_$graphname_`date '+%d-%m-%Y'`.png";
my $i = 0;
foreach my $loop_variable (@frequensy_array) { 
    print "$loop_variable $i\n";
system("rrdtool  graph $basepath$loop_variable$underscore$file_name$underscore$filetimestamp --end now --start $starttime --vertical-label \"Power(db)\" --slope-mode --title 'HF Noise Monitoring (ZR6AIC) http://zr6aic.blogspot.com' -w 500 -h 135 -a PNG DEF:$loop_variable=hf_noise.rrd:$loop_variable:AVERAGE LINE1:$loop_variable#ff0000:$loop_variable VDEF:Last=$loop_variable,LAST 'GPRINT:Last:Last %2.2lf%sdB' VDEF:Min=$loop_variable,MINIMUM 'GPRINT:Min:Min %2.2lf%sdB' VDEF:Peak=$loop_variable,MAXIMUM 'GPRINT:Peak:Max %2.2lf%sdB' VDEF:Average=$loop_variable,AVERAGE 'GPRINT:Average:Avg %2.2lf%sdB' 'COMMENT:\\l' 'COMMENT:Created $now\\r'\n");
$i ++;
} 


#print "rrdtool  graph $filepath --end now --start $starttime -w 1200 -h 560 -a PNG DEF:1Mhz_Power=hf_noise.rrd:1Mhz_Power:AVERAGE LINE1:1Mhz_Power#ff0000:1Mhz_Power\n";

