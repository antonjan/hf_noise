#!/usr/bin/perl
use strict;
use warnings;

use Text::CSV;
my $csv = Text::CSV->new({ sep_char => ',' });

my $file = $ARGV[0] or die "Need to get CSV file on the command line\n";

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
if ($fields[2] = 1000000) {
print "1Mhz data $fields[5] $fields[6]\n";
} elsif ($fields[2] = 2000000) {
     print "2Mhz data $fields[5] $fields[6]\n";
  }
}
}
print "$sum\n";
