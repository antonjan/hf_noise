<?php
echo "<html>";
echo "<body>";
include "menu.php";
$Station_Call_sign  = $_POST['Station_Call_sign'];
$Remote_station_coordinates_lat  = $_POST['Remote_station_coordinates_lat'];
$Remote_station_coordinates_long  = $_POST['Remote_station_coordinates_long'];
$Remote_station_login_Key = $_POST['Remote_Station_Key']; 
//************************************************ code *************************************************
//
$file = fopen("station_config.ini","w");
//; This is a the Remote Station configuration file

echo fwrite($file,"[station_details]\n");
echo fwrite($file,"Call_sign = ".$Station_Call_sign."\n");
echo fwrite($file,"Pass_Key = ".$Remote_station_login_Key."\n");
echo fwrite($file,"GPS_Lat = ".$Remote_station_coordinates_lat."\n");
echo fwrite($file,"GPS_Long = ".$Remote_station_coordinates_long."\n");
echo fwrite($file,"Minute = 27\n");
echo fwrite($file,"Hour = 23 ;Houre for upload\n");
echo fwrite($file,"Bandwith = 1000 ;bandwith in Khz\n");
echo fwrite($file,"Antenna_Switch = on ;Antenna Switch\n");

fclose($file);

echo "<br>Thank You For Registering your Station<br>";
echo "You station should now submit your daily data to the master server at about midnight 0:0 central africa time (GMT +2)";
echo "</body>";
echo "</html>";
?>
