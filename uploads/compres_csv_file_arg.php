<?php
print_r($argv);
if ($argv[1] != null) {
$file = $argv[1];
}

$files = glob('../hf_monitoring_graph*.{cvs}', GLOB_BRACE);

//foreach($files as $file)
{    
  //do your work here    
echo "file = ".$file;
//################Parse ini file ########################################
// Parse without sections
$ini_array = parse_ini_file("../admen/station_config.ini");
print_r($ini_array);
//$age=array("Peter"=>"35","Ben"=>"37","Joe"=>"43");
//echo "Peter is " . $age['Peter'] . " years old.";
echo "Callsign " . $ini_array['call_sign'];
echo "Pass_Key " . $ini_array['Pass_Key'];
echo "GPS_Lat " . $ini_array['GPS_Lat'];
echo "GPS_Long " . $ini_array['GPS_Laong'];



//################ Call Sign ,Key and GPS data ###########################
//Change yor station ID here.
//$Call_sign="zr6aic";
$Call_sign = $ini_array['call_sign'];	
//Change your Key here
//$Pass_Key="1234567890-0987654321";
$Pass_Key = $ini_array['Pass_Key'];	
//Change your location Latitude (digital format only get it from google map)
//$GPS_Lat="26.432";
$GPS_Lat = $ini_array['GPS_Lat'];	
//Change your location Long (digital format only get it from google map)
//$GPS_Long="-27.612";
$GPS_Long = $ini_array['GPS_Lat'];	
//##########################################################################
$row = 1;
$json_string = "";
$oldTime ="";
//if (($handle = fopen("uploads/hf_monitoring_graph_21-01-2018_test.csv", "r")) !== FALSE) {
if (($handle = fopen($file, "r")) !== FALSE) {
    while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {
        $num = count($data);
//        echo "<p> $num fields in line $row: <br /></p>\n";
        $row++;
        for ($c=0; $c < $num; $c++) {
           // echo $c ." " . $data[$c] . "<br />\n";
        
if ($oldTime == $data[1]) {

}else {
	$json_string .= $data[0] . "," .$data[1].  ",". $data[5] ; 
	$oldTime = $data[1];
}
}

if ($oldTime == $data[1]) {
$json_string .="," .$data[6] ;

}
if($data[2] == "29000000"){
#$json_string .= ",-26.4,-27.6,".$Call_sign.",".$Pass_Key."\n\r";
$json_string .= ",".$GPS_Lat.",".$GPS_Long.",".$Call_sign.",".$Pass_Key."\n\r";
}

}
//$json_string .= "\r\n";
//API Url
$url = 'http://rfnoise.amsatsa.org.za/hf_noise/upload/jason_upload.php';

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
    fclose($handle);
//echo $json_string;
echo "posting result " . $result ;
}
}
?>


