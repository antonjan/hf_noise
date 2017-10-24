#!/usr/bin/perl
#This application is creating all the html pages for the HF power leveling system.
use warnings; 
use strict; 
use Data::Dumper; 
use warnings; 
my $basepath="/var/www/hf_noise/graph/"; 
my @frequensy_array = ("1Mhz_Power", "2Mhz_Power", "3Mhz_Power", "4Mhz_Power", "5Mhz_Power",  "6Mhz_Power", "7Mhz_Power","8Mhz_Power","9Mhz_Power","10Mhz_Power","11Mhz_Power","12Mhz_Power","13Mhz_Power","14Mhz_Power","15Mhz_Power","16Mhz_Power","17Mhz_Power","18Mhz_Power","19Mhz_Power","20Mhz_Power","21Mhz_Power","22Mhz_Power","23Mhz_Power","24Mhz_Power","25Mhz_Power","26Mhz_Power","27Mhz_Power","28Mhz_Power","29Mhz_Power");
my @description = ("1Mhz to 2Mhz","2Mhz to 3Mhz","3Mhz to 4Mhz","4Mhz to 5Mhz","5Mhz to 6Mhz","6Mhz to 7Mhz","7Mhz to 8Mhz","8Mhz to 9Mhz","9Mhz to 10Mhz","10Mhz to 11Mhz","11Mhz to 12Mhz","12Mhz to 13Mhz","13Mhz to 14Mhz","14Mhz to 15Mhz","15Mhz to 16Mhz","16Mhz to 17Mhz","17Mhz to 18Mhz","18Mhz to 19Mhz","19Mhz to 20Mhz","20Mhz to 21Mhz","21Mhz to 22Mhz","22Mhz to 23Mhz","23Mhz to 24Mhz","24Mhz to 25Mhz","25Mhz to 26Mhz","26Mhz to 27Mhz","27Mhz to 28Mhz","28Mhz to 29Mhz","29Mhz to 30Mhz");
my @imagename = ("_2_day_db.png","_2_week_db.png","_2_moths_db.png","_2_years_db.png");
my $path_extention =".php";
# 
my $i = 0;
foreach my $loop_variable (@frequensy_array) {
#
#print "$loop_variable $i\n";
my $file="$basepath$loop_variable$path_extention";
#print "$loop_variable\n";
print "creating file $file\n";
open(my $FILE, ">$file") or die "Cannot open $file: $!";
print $FILE "<html>\n";
print $FILE "<head>\n";
print $FILE "<?php include 'header.php';?>\n";
print $FILE "</head>\n";
print $FILE "<body>\n"; 
print $FILE "<h2>ZR6AIC HF Noise Montoring</h2>\n";
print $FILE "This system is using a RTL HF dongle avalible from <a href =\"http://www.giga.co.za/ocart/index.php?route=product/product&path=59_63&product_id=178\">http://www.giga.co.za</a><br>\n";
print $FILE "<a href =\"http://www.giga.co.za/ocart/index.php?route=product/product&path=59_63&product_id=178\"><img src=\"hf_sdr_1.jpg\" alt=\"100Khz to 1.7Ghz SDR\" style=\"width:304px;height:228px;\"></a><br>\n";
print $FILE "<div class=\"menu\">\n";
print $FILE "<?php include 'menu.php';?>\n";
print $FILE "</div>\n";
print $FILE "<h2>$description[$i] 'Daily' Graph (5 Minute Average) 1Mhz bandwith</h2>\n";
print $FILE "<img src=\"$loop_variable$imagename[0]\">\n";
print $FILE "<p>\n";
print $FILE "<h2>$description[$i] `Weekly' Graph (30 Minute Average)</h2>\n";
print $FILE "<img src=\"$loop_variable$imagename[1]\">\n";
print $FILE "<p>\n";
print $FILE "<h2>$description[$i] `Monthly' Graph (2 Hour Average)</h2>\n";
print $FILE "<img src=\"$loop_variable$imagename[2]\">\n";
print $FILE "<p>\n";
print $FILE "<h2>$description[$i] `Yearly' Graph (1 Day Average)</h2>\n";
print $FILE "<img src=\"$loop_variable$imagename[3]\">\n";
print $FILE "<p>\n";
print $FILE "<?php include 'footer.php';?>\n";
print $FILE "</body>\n";
print $FILE "</html>\n";
close($FILE); 
$i++;
}
print "Your html has been created\n"; 

