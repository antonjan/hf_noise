#! /usr/bin/perl -w
#./date_seconds.pl '12:30pm jan 4 1987'
#./date_seconds.pl 1221677444
#./date_seconds.pl yesterday
#%s   seconds since 1970-01-01 00:00:00 UTC
#exec "date -d '$_' +%s";
#date -d '2017-06-27 20:30:37' +%s
# install sudo cpan Date::Manip
use Date::Manip;
use strict;
#system("date -d '2017-06-27 20:30:37' +%s");
my $time = UnixDate('2007/07/17 13:21', "%s");

print "time=$time\n";

