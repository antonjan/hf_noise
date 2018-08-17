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
//$ini_array = parse_ini_file("station_config.ini");
//print_r($ini_array);

// Parse with sections
$ini_array = parse_ini_file("station_config.ini", true);
//print_r($ini_array);

?>
<b>  To Do</b><br>
  Form to admin remote station<br>
  callsign<br>
  Key<br>
  Lat<br>
  Long<br>
  Bandwith<br>
  Channels<br>
  Remote URL<br>
  Local Image<br>
  Local Sysadmin details<br>
  Local Sysadmin contact URL<br>
 
</body>
</html>
