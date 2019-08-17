<?php
echo "<html>";
echo "<head>";
echo "<title>Edit Remote Station</title>";
echo "</head>";
echo "<body>";
?>
<link href="style.css" media="screen" rel="stylesheet" type="text/css" />
<body>
<div class='navigation'>
    <div class="main-container full-width">
        <div class="site-width">


            <div class="menu-box">
                <a href="/hf_noise/admin/index.php">Main</a>
                <a href="/hf_noise/admin/register_your_station.php">Register Your Station</a>
		<a href="/hf_noise/admin/send_data_today.php">Send data Now</a>
		<a href="/hf_noise/admin/last_data_send.php">Upload Log</a>
		<a href="/hf_noise/admin/delete_old_noise_files.php">Clear Files</a>
                <a href="/hf_noise/about_us.php">About Us</a>
                <a href="http://rfnoise.amsatsa.org.za/contact_us.php">Contact Us</a>
            </div>

        </div> <!-- site-width -->
    </div> <!-- main-container -->
</div>
 <div class="intro-box">
<?php
if ($file = fopen("station_config.ini", "r")) {
    while(!feof($file)) {
        $line = fgets($file);
	# do same stuff with the $line
	echo $line ."<br>";
    }
    fclose($file);
}
echo "</div>";
echo "</body>";
echo "</html>";
?>
