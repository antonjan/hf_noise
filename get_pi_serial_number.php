<?php
//$ip  = $_SERVER['www.google.co.za'];
//$ip = 127.0.0.1;
//$mac = shell_exec('arp -a ' . escapeshellarg($ip));
$output = shell_exec('cat /proc/cpuinfo');
$find = 'Serial';
$pos = strpos($output, $find);
$serial = substr($output, $pos+9, 17);
echo $serial

//echo $mac

?>
