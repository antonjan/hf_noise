#!/usr/bin/perl
#use strict;
use warnings;
use Text::CSV;
use Date::Manip;
use Text::Trim qw(trim);
#use RRD::Simple();
my $csv = Text::CSV->new({ sep_char => ',' });
#my $date_sec = '';
my $file = $ARGV[0] or die "Need to add CSV file path on the command line\n";
my @rrdfields;
my $sum = 0;
open(my $data, '<', $file) or die "Could not open '$file' $!\n";
while (my $line = <$data>) {
  chomp $line;
print "line $line\n";
  if ($csv->parse($line)) {
      my @fields = $csv->fields();
      $sum += 1;
      print "fiels $fields[0] $fields[1] $fields[2] $fields[3] $fields[4] $fields[5] $fields[6]\n";
#put code here to load in rrd
#exec date -d '2017-06-27 20:30:37' +%s
if (trim($fields[2]) == 1000000) {
   print "1Mhz data $fields[5] $fields[6]\n";
   #add rrd command here
   #$date_sec = system("date -d $fields[0] $fields[1] +%s");
   #$date_sec = time();
   #system("date -d '2017-06-27 20:30:37' +%s");
   #my $time = UnixDate('2007/07/17 13:21', "%s");
   $recordtime = UnixDate("$fields[0] $fields[1]", "%s");
   #print  "$time";
   #rrdtool {update | updatev} filename [--template|-t ds-name[:ds-name]...] [--skip-past-updates|-s] [--daemon|-d address] [--] N:value[:value]... timestamp:value[:value]... at-timestamp@value[:value]...  print "rrdtool update hf_noise.rrd ds-name:1Mhz_Power $recordtime:$fields[6]\n";
   #rdtool update demo2.rrd 887457267:U 887457521:22 887457903:2.7
   $rrdfields[0] = trim($fields[6]);
   print "rrdtool update hf_noise.rrd ds-name:1Mhz_Power $recordtime:$rrdfields[0]\n";


} elsif (trim($fields[2]) == 2000000) {
     print "2Mhz data $fields[5] $fields[6]\n";
     #$rrddata = trim($fields[6]);
     $rrdfields[1] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:2Mhz_Power $recordtime:$rrdfields[1]\n";
     #rrdtool update hf_noise.rrd ds-name:2Mhz_Power $recordtime:$rrdfields[1];
     print "*******************************************\n";
     #print "rrddata is  $rrddata\n";

    #rdtool update demo2.rrd 887457267:U 887457521:22 887457903:2.7  
  } elsif (trim($fields[2]) == 3000000) {
     print "3Mhz data $fields[5] $fields[6]\n";
     $rrdfields[2] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:3Mhz_Power $recordtime:$rrdfields[2]\n";
     #add rrd command here; 

  } elsif (trim($fields[2]) == 4000000) {
     print "4Mhz data $fields[5] $fields[6]\n";
     $rrdfields[3] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:4Mhz_Power $recordtime:$rrdfields[3]\n";
     #add rrd command here 

  } elsif (trim($fields[2]) == 5000000) {
     print "5Mhz data $fields[5] $fields[6]\n";
     $rrdfields[4] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:5Mhz_Power $recordtime:$rrdfields[4]\n";
     #add rrd command here 

  } elsif (trim($fields[2]) == 6000000) {
     print "6Mhz data $fields[5] $fields[6]\n";
     $rrdfields[5] = trim($fields[6]); 
     print "rrdtool update hf_noise.rrd ds-name:6Mhz_Power $recordtime:$rrdfields[5]\n";
     #add rrd command here 
  
  } elsif (trim($fields[2]) == 7000000) {
     print "7Mhz data $fields[5] $fields[6]\n";
     $rrdfields[6] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:7Mhz_Power $recordtime:$rrdfields[6]\n";
     #add rrd command here 
  
  } elsif (trim($fields[2]) == 8000000) {
     print "8Mhz data $fields[5] $fields[6]\n";
     $rrdfields[7] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:8Mhz_Power $recordtime:$rrdfields[7]\n";
     #add rrd command here 
  
  } elsif (trim($fields[2]) == 9000000) {
     print "9Mhz data $fields[5] $fields[6]\n";
     $rrdfields[8] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:9Mhz_Power $recordtime:$rrdfields[8]\n";
     #add rrd command here 
  
  } elsif (trim($fields[2]) == 10000000) {
     print "10Mhz data $fields[5] $fields[6]\n";
     $rrdfields[9] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:10Mhz_Power $recordtime:$rrdfields[9]\n";
     #add rrd command here 
  
  } elsif (trim($fields[2]) == 11000000) {
     print "11Mhz data $fields[5] $fields[6]\n";
     $rrdfields[10] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:11Mhz_Power $recordtime:$rrdfields[10]\n";
     #add rrd command here 
  
  } elsif (trim($fields[2]) == 12000000) {
     print "12Mhz data $fields[5] $fields[6]\n";
     $rrdfields[11] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:12Mhz_Power $recordtime:$rrdfields[11]\n";
     #add rrd command here 
  
  } elsif (trim($fields[2]) == 13000000) {
     print "13Mhz data $fields[5] $fields[6]\n";
     $rrdfields[12] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:13Mhz_Power $recordtime:$rrdfields[12]\n";
     #add rrd command here 
  
  } elsif (trim($fields[2]) == 14000000) {
     print "14Mhz data $fields[5] $fields[6]\n";
     $rrdfields[13] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:14Mhz_Power $recordtime:$rrdfields[13]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 15000000) {
     print "15Mhz data $fields[5] $fields[6]\n";
     $rrdfields[14] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:15Mhz_Power $recordtime:$rrdfields[14]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 16000000) {
     print "16Mhz data $fields[5] $fields[6]\n";
     $rrdfields[15] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:16Mhz_Power $recordtime:$rrdfields[15]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 17000000) {
     print "17Mhz data $fields[5] $fields[6]\n";
     $rrdfields[16] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:17Mhz_Power $recordtime:$rrdfields[16]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 18000000) {
     print "18Mhz data $fields[5] $fields[6]\n";
     $rrdfields[17] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:18Mhz_Power $recordtime:$rrdfields[17]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 19000000) {
     print "19Mhz data $fields[5] $fields[6]\n";
     $rrdfields[18] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:19Mhz_Power $recordtime:$rrdfields[18]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 20000000) {
     print "20Mhz data $fields[5] $fields[6]\n";
     $rrdfields[19] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:20Mhz_Power $recordtime:$rrdfields[19]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 21000000) {
     print "21Mhz data $fields[5] $fields[6]\n";
     $rrdfields[20] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:21Mhz_Power $recordtime:$rrdfields[20]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 22000000) {
     print "22Mhz data $fields[5] $fields[6]\n";
     $rrdfields[21] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:22Mhz_Power $recordtime:$rrdfields[21]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 23000000) {
     print "23Mhz data $fields[5] $fields[6]\n";
     $rrdfields[22] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:23Mhz_Power $recordtime:$rrdfields[22]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 24000000) {
     print "24Mhz data $fields[5] $fields[6]\n";
     $rrdfields[23] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:24Mhz_Power $recordtime:$rrdfields[23]\n";
     #add rrd command here 

  } elsif ($fields[2] == 25000000) {
     print "25Mhz data $fields[5] $fields[6]\n";
     $rrdfields[24] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:25Mhz_Power $recordtime:$rrdfields[24]\n";
     #add rrd command here 

  } elsif ($fields[2] == 26000000) {
     print "26Mhz data $fields[5] $fields[6]\n";
     $rrdfields[25] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:26Mhz_Power $recordtime:$rrdfields[25]\n";
     #add rrd command here 
 
  } elsif ($fields[2] == 27000000) {
     print "27Mhz data $fields[5] $fields[6]\n";
     $rrdfields[26] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:27Mhz_Power $recordtime:$rrdfields[26]\n";
     #add rrd command here 

  } elsif ($fields[2] == 28000000) {
     print "28Mhz data $fields[5] $fields[6]\n";
     $rrdfields[27] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:28Mhz_Power $recordtime:$rrdfields[27]\n";
     #add rrd command here 

  } elsif ($fields[2] == 29000000) {
     print "29Mhz data $fields[5] $fields[6]\n";
     $rrdfields[28] = trim($fields[6]);
     print "rrdtool update hf_noise.rrd ds-name:29Mhz_Power $recordtime:$rrdfields[28]\n";
     #add rrd command here 
    print "********************************************************************************\n";
#    print "rrdtool update hf_noise.rrd ds-name:30Mhz_Power $recordtime:$rrdfields[29]\n";
    print "rrdtool update hf_noise.rrd $recordtime:$rrdfields[0]:$rrdfields[1]:$rrdfields[2]:$rrdfields[3]:$rrdfields[4]:$rrdfields[5]:$rrdfields[6]:$rrdfields[7]:$rrdfields[8]:$rrdfields[9]:$rrdfields[10]:$rrdfields[11]:$rrdfields[12]:$rrdfields[13]:$rrdfields[14]:$rrdfields[15]:$rrdfields[16]:$rrdfields[17]:$rrdfields[18]:$rrdfields[19]:$rrdfields[20]:$rrdfields[21]:$rrdfields[22]:$rrdfields[23]:$rrdfields[24]:$rrdfields[25]:$rrdfields[26]:$rrdfields[27]:$rrdfields[28]\n";

system("rrdtool update /home/rfnoise/hf_noise/hf_noise.rrd $recordtime:$rrdfields[0]:$rrdfields[1]:$rrdfields[2]:$rrdfields[3]:$rrdfields[4]:$rrdfields[5]:$rrdfields[6]:$rrdfields[7]:$rrdfields[8]:$rrdfields[9]:$rrdfields[10]:$rrdfields[11]:$rrdfields[12]:$rrdfields[13]:$rrdfields[14]:$rrdfields[15]:$rrdfields[16]:$rrdfields[17]:$rrdfields[18]:$rrdfields[19]:$rrdfields[20]:$rrdfields[21]:$rrdfields[22]:$rrdfields[23]:$rrdfields[24]:$rrdfields[25]:$rrdfields[26]:$rrdfields[27]:$rrdfields[28]:0\n");

    print "********************************************************************************\n";

  }

}
}
print "$sum\n";
