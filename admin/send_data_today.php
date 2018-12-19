<html><link href="style.css" media="screen" rel="stylesheet" type="text/css" />
<body>
<div class='navigation'>
    <div class="main-container full-width">
        <div class="site-width">


            <div class="menu-box">
                <a href="/hf_noise/admin/index.php">Main</a>
                <a href="/hf_noise/admin/register_your_station.php">Register Your Station</a>
		<a href="/hf_noise/admin/send_data_today.php">Send data Now</a>
		<a href="/hf_noise/admin/last_data_send.php">Upload Log</a>
                <a href="/hf_noise/about_us.php">About Us</a>
                <a href="http://rfnoise.amsatsa.org.za/contact_us.php">Contact Us</a>
            </div>
        </div> <!-- site-width -->
    </div> <!-- main-container -->
</div>
<div class="intro-box">
<?php
$output = shell_exec("./myscript.sh");
echo "Data has been send with the following result <br>".$output ;
?>
</div>
</body>
</html>
