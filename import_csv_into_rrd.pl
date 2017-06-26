#!/usr/bin/perl
use strict;
use warnings;

use Text::CSV;
my $csv = Text::CSV->new({ sep_char => ',' });

my $file = $ARGV[0] or die "Need to add CSV file path on the command line\n";

my $sum = 0;
open(my $data, '<', $file) or die "Could not open '$file' $!\n";
while (my $line = <$data>) {
  chomp $line;
print "line $line\n";
  if ($csv->parse($line)) {
      my @fields = $csv->fields();
      $sum += $fields[3];
      print "fiels $fields[0] $fields[1] $fields[2] $fields[3] $fields[4] $fields[5] $fields[6]\n";
#put code here to load in rrd
if ($fields[2] == 1000000) {
print "1Mhz data $fields[5] $fields[6]\n";
#add rrd command here
} elsif ($fields[2] == 2000000) {
     print "2Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
#rdtool update demo2.rrd 887457267:U 887457521:22 887457903:2.7  
  } elsif ($fields[2] == 3000000) {
     print "3Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 4000000) {
     print "4Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 5000000) {
     print "5Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 6000000) {
     print "6Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 7000000) {
     print "7Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 8000000) {
     print "8Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 9000000) {
     print "9Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  
  } elsif ($fields[2] = 10000000) {
     print "10Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 11000000) {
     print "11Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 12000000) {
     print "12Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 13000000) {
     print "13Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 14000000) {
     print "14Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 15000000) {
     print "15Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 16000000) {
     print "16Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 17000000) {
     print "17Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 18000000) {
     print "18Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 19000000) {
     print "19Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 20000000) {
     print "20Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 21000000) {
     print "21Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 22000000) {
     print "22Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 23000000) {
     print "23Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  
  } elsif ($fields[2] == 24000000) {
     print "24Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 

  } elsif ($fields[2] == 25000000) {
     print "25Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 

  } elsif ($fields[2] == 26000000) {
     print "26Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
 
  } elsif ($fields[2] == 27000000) {
     print "27Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 

  } elsif ($fields[2] == 28000000) {
     print "28Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 

  } elsif ($fields[2] == 29000000) {
     print "29Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 

  } elsif ($fields[2] == 30000000) {
     print "30Mhz data $fields[5] $fields[6]\n";
     #add rrd command here 
  }

}
}
print "$sum\n";
