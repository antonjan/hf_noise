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
$Machine_Id = trim(shell_exec('cat /etc/machine-id 2>/dev/null')); 
echo "mmm", $Machine_Id;
//
//########################## CPU ID ########################################
$Station_CPU_ID = 'UNNONE';
//############################# Client IP ##################################
//
//echo 'User Real IP - '.getUserIpAddr();
$IP_Address = '0.0.0.0';
//
//##########################################################################
$row = 1;
$json_string = "";

$json_string .= $Machine_Id.",".$Station_CPU_ID.",".$Call_sign.",".$IP_Address."\n\r";
echo "jstring = ",$json_string;
//$json_string .= "\r\n";
//API Url
$url = 'http://rfnoise.amsatsa.org.za/hf_noise/upload/jason_self_register.php';

//Initiate cURL.
$ch = curl_init($url);

//Tell cURL that we want to send a POST request.
curl_setopt($ch, CURLOPT_POST, 1);

//Attach our encoded JSON string to the POST fields.
curl_setopt($ch, CURLOPT_POSTFIELDS, $json_string); //$jsonDataEncoded);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
//Set the content type to application/json
curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json')); 

//Execute the request
$result = curl_exec($ch);
//fclose($handle);
//echo $json_string;
echo "posting result " . $result ;
//
//******************** Reading Values *************
$header=substr($result,0,curl_getinfo($ch,CURLINFO_HEADER_SIZE));
$body=substr($result,curl_getinfo($ch,CURLINFO_HEADER_SIZE));
//echo "body = ".$body."\n\r";
//echo "header = ".$header."\n\r";
//echo "vardamp1 ".var_dump($header)."\n\r";
//echo "vardamp2 ".var_dump($body);
//echo "jdecode 0". $json = json_decode(utf8_encode($header), true);
//$jj = '{Call_sign:"ZR6AIC_1",Lat:"-26.17"}';
//echo "json decode ".json_decode($jj,true);
//echo "vardump3 ".var_dump(json_decode(trim($header)));
$delimiter = empty($options['delimiter']) ? "," : $options['delimiter'];
//$delimiter2 = empty($options['delimiter']) ? ":" : $options['delimiter'];
$field_names = explode($delimiter, $header);
//$items = explode($delimiter2,$field_names[0]); 
echo "field names" . var_dump($field_names);
//echo "items ".var_dump($items);
//*************************************************
$file = fopen("/var/www/html/hf_noise/admin/station_config.ini","w");
//; This is a the Remote Station configuration file
/*
[0]=>
  string(8) "ZR6AIC_1"
  [1]=>
  string(6) "-26.17"
  [2]=>
  string(4) "28.4"
  [3]=>
  string(5) "Array"
  [4]=>
  string(1) "0"
  [5]=>
  string(1) "0"
  [6]=>
  string(1) "N"
  [7]=>
  string(4) "1000"
  [8]=>
  string(2) "hf"
  [9]=>
  string(0) "55"
  [10]=>
  string(3) "23
*/
echo fwrite($file,"[station_details]\n");
echo fwrite($file,"Call_sign = ".$field_names[0]."\n");
echo fwrite($file,"Pass_Key = ".$field_names[3]."\n");
echo fwrite($file,"GPS_Lat = ".$field_names[1]."\n");
echo fwrite($file,"GPS_Long = ".$field_names[2]."\n");
echo fwrite($file,"Minute = ".$field_names[9]."\n");
echo fwrite($file,"Hour = ".$field_names[10]."\n"); 
echo fwrite($file,"Bandwith = ".$field_names[7]."\n");
echo fwrite($file,"Antenna_Switch = ".$field_names[6]."\n");
echo fwrite($file,"SDR_Type = ".$field_names[4]."\n");
echo fwrite($file,"Antenna_Type = ".$field_names[5]."\n");
echo fwrite($file,"Bands = ".$field_names[8]."\n");
echo fwrite($file,"Version = 2.0\n");
fclose($file);

?>



