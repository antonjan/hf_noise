<html>
<body>
<head>
<link href="/style.css" media="screen" rel="stylesheet" type="text/css" />
</head>
<?php
include "menu.php";
?>
<h1>Station details</h1>
<?php

// Parse without sections
$ini_array = parse_ini_file("station_config.ini");
//print_r($ini_array);

// Parse with sections
//$ini_array = parse_ini_file("station_config.ini", true);
//print_r($ini_array);

?>
<b>Configuration Data</b><br>
<?php

echo "Call_sign" . $ini_array['Call_sign']."<br>";
echo "Pass_Key=" . $ini_array['Pass_Key']."<br>";
echo "GPS_Lat=" . $ini_array['GPS_Lat']."<br>";
echo "GPS_Long=" . $ini_array['GPS_Long']."<br>";
echo "Minute=" . $ini_array['Minute']."<br>";
echo "Hour=" . $ini_array['Hour']."<br>"; //Houre for upload
echo "Bandwith=" . $ini_array['Bandwith']."<br>"; //Bandwith of samples 1M
echo "Antenna_Switch=" . $ini_array['Antenna_Switch']."<br>"; //Antenna switch on (High low passfiter enable

?>
<hr>
<b>  To Do</b><br>
  Bandwith<br>
  Channels<br>
  Remote URL<br>
  Local Image<br>
  Local Sysadmin details<br>
  Local Sysadmin contact URL<br>

</body>
</html>
