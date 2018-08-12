<html>
<body>
<h1>Station details</h1>
<?php

// Parse without sections
//$ini_array = parse_ini_file("station_config.ini");
//print_r($ini_array);

// Parse with sections
$ini_array = parse_ini_file("station_config.ini", true);
//print_r($ini_array);

?>
</body>
</html>
