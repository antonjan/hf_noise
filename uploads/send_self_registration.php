<?php
//################Parse ini file ########################################
// Parse without sections
$ini_array = parse_ini_file("/var/www/html/hf_noise/admin/station_config.ini");
print_r($ini_array);
//$age=array("Peter"=>"35","Ben"=>"37","Joe"=>"43");
//echo "Peter is " . $age['Peter'] . " years old.";
echo "Callsign " . $ini_array['Call_sign'];
echo "Pass_Key " . $ini_array['Pass_Key'];
echo "GPS_Lat " . $ini_array['GPS_Lat'];
echo "GPS_Long " . $ini_array['GPS_Long'];



//################ Call Sign ,Key and GPS data ###########################
//Change yor station ID here.
//$Call_sign="zr6aic";
$Call_sign = $ini_array['Call_sign'];	
//Change your Key here
//$Pass_Key="1234567890-0987654321";
$Pass_Key = $ini_array['Pass_Key'];	
//Change your location Latitude (digital format only get it from google map)
//$GPS_Lat="26.432";
$GPS_Lat = $ini_array['GPS_Lat'];	
//Change your location Long (digital format only get it from google map)
//$GPS_Long="-27.612";
$GPS_Long = $ini_array['GPS_Long'];	
//############################# Machine ID #################################
//Machine ID
$Machine_Id = shell_exec('cat /etc/machine-id');
//
//############################# Client IP ##################################
//
//echo 'User Real IP - '.getUserIpAddr();
//
//##########################################################################
$row = 1;
$json_string = "";

$json_string .= $Machine_Id. ",".$GPS_Lat.",".$GPS_Long.",".$Call_sign."\n\r";

//$json_string .= "\r\n";
//API Url
$url = 'http://rfnoise.amsatsa.org.za/hf_noise/upload/jason_self_register.php';

//Initiate cURL.
$ch = curl_init($url);

//Tell cURL that we want to send a POST request.
curl_setopt($ch, CURLOPT_POST, 1);

//Attach our encoded JSON string to the POST fields.
curl_setopt($ch, CURLOPT_POSTFIELDS, $json_string); //$jsonDataEncoded);

//Set the content type to application/json
curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json')); 

//Execute the request
$result = curl_exec($ch);
//fclose($handle);
//echo $json_string;
echo "posting result " . $result ;

?>



