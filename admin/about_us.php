<html>
<head>
	<title>HF Noise</title>		
	<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
	<link href="style.css" media="screen" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
</head>
<body>


<div class='navigation'>
    <div class="main-container full-width">
        <div class="site-width">


 <div class="menu-box">
                <a href="/hf_noise/admin/index.php">Main</a>
                <a href="/hf_noise/admin/register_your_station.php">Register Your Station</a>
		<a href="/hf_noise/admin/send_data_today.php">Send Data now</a>
		<a href="/hf_noise/admin/last_data_send.php">Upload Log</a>
                <a href="/hf_noise/admin/about_us.php">About Us</a>
                <a href="http://rfnoise.amsatsa.org.za/contact_us.php">Contact Us</a>
            </div>
        </div> <!-- site-width -->
    </div> <!-- main-container --> 
</div>


<div class="main-container full-width">
	<div class="site-width">

		<div class="content-container">

			<h3 class="align-center">About AMSATSA RF Noise Monitoring System</h3>
			<h5 class="align-center">This is the RF Noise Monitoring Mater server for AMSATSA Noise Monitoring project.</h5>
			<div class="seperator"></div>
		</div>

		<div class="content-container">

			<p>This system consists of several remote stations, running a Linux operating system either on a Raspberry Pi or on a laptop with an RTL dongle, recording HF noise at the moment.</p>
			<p>The Linux Remote stations will record RF Noise in 1 Mhz bandwidth blocks from 1 Mhz to 30Mhz, generate local graphs and will also send the data to the master server which is this server.</p>
			<p>Radio Amateurs that want to be part of this project can get the required equipment and the register their station on this master station.</p>
			
			<h3 class="underline">Getting Started</h3>

			<h5>Remote Station Software</h5>
			<p>The remote station software is available from <a target="_blank" href="http://www.giga.co.za/ocart/index.php?route=product/product&search=hf%20noise&product_id=344">Giga Technology</a>.</p>
			
			<h5>HF SDR Dongles</h5>
			<p>The HF SDR Dongles are also available from Giga Technology.<br> 
			<a target="_blank" href="http://www.giga.co.za/ocart/index.php?route=product/product&product_id=357">Click here for more information.</a></p>
			
			<h5>Antenna</h5>
			<p>What antenna do I need for this system? (This is still under discussion at the next SDR Workshop)</p>
			
			<h5>Raspberry Pi</h5>
			<p>More information regarding the remote station on Raspberry Pi is <a target="_blank" href="http://zr6aic.blogspot.co.za/2017/08/rf-noise-monitoring-system-for-hf.html">available here</a>.</p>
			<h5>Raspberry Pi Antenna interface and filter Board</h5>
			<p>This is a Pi Hat board that has a Low and High Pass filter, power injection for Active Antenna with ground Isolation to Raspberry and sdr dongle.<a target="_blank" href="https://github.com/antonjan/rf_noise_antenna/blob/master/README.md"> More info here.</a></p>
			<p><a target="_blank" href="https://github.com/antonjan/rf_noise_antenna/blob/master/README.md"><img style="margin-bottom: 40px;" src="images/rf_noise_Pi_Hat_3d_view_v1.png" height="340" width="340"></a></p>
			
			<h5>Bootable USB Memory Stick</h5>
			<p>More information regarding the bootable USB memory stick with persistence is <a target="_blank" href="http://zr6aic.blogspot.co.za/2017/11/hf-noise-monitoring-system-running-from.html">available here</a>.</p>
			
			<h5>Enabling Process Explained</h5>
			<p>The process to enable your remote station is described in the <a target="_blank" href="https://github.com/antonjan/hf_noise/blob/master/uploads/README.md">readme documentation.</a></p>

			</div>

			<div class="content-container">

			<h3 class="underline">How It Works</h3>

			<img style="margin-bottom: 40px;" src="https://4.bp.blogspot.com/-snbfq9pWDSI/WbGOoxSUkeI/AAAAAAABWj4/wMmwu5pOU086bRi99hg6DGJy4uIc8a7uwCLcBGAs/s400/HF_Noise_Monitoring_system_block_diagram.png" height="240" width="320">

			<p>The HF noise monitoring system takes a 12 x 1Mhz bandwidth sample every 2 minutes using the rtl_power utility and saves the measurements in a CVS file.</p>
			<p>The 2-minute scheduling is done with a Crontab calling a script in the hf_noise directory. The RF Samples are taken at a 1Mhz bandwidth from 1M to 30Mhz, therefore 29 of the CVS files are created and gets appended as the measurements are made.</p>
			<p>A Perl script utility is executed from a CRON scheduler to read the 29 CSV files and import their data into an RRD database.</p>
			<p>The RRD database then gets interrogated by another Perl script scheduled by a CRON job to generate the graph images and HTML files and get saved in the Apache web server graph directory which is then exposed on the local link http://localhost/hf_noise/graph/1Mhz_Power.php</p>
			<p>Link to the live system <a target="_blank" href="http://zr6aic.giga.co.za/hf_noise/graph/1Mhz_Power.php">http://zr6aic.giga.co.za/hf_noise/graph/1Mhz_Power.php</a></p>
			<p>The RRD database will then create the Hourly, Daily, Weekly, Monthly and Yearly averages and then generate the graphs every 2 minutes according to the parameters passed to the database.</p>
			<p>The generated graphs are then displayed in a PHP page via an Apache web server with a PHP plugin on the following URL http://localhost/hf_noise/graph/1Mhz_Power.php.</p>
			<p>Trends can then be seen on the graphs over time.</p>
			<p>The heat map is generated by a Python script from different CSV files and is saved in the /var/www/hf_noise/images directory and can be accessed on the local web server on the following URL http://localhost/hf_noise/images.</p>
			<p>Link to the live system <a target="_blank" href="http://zr6aic.giga.co.za/hf_noise/images/">http://zr6aic.giga.co.za/hf_noise/images/</a></p>

			<div class="seperator-full"></div>			

			<h5 style="margin-bottom: 20px;">Video explaning how system works</h5>
			<!-- <iframe allowfullscreen="" frameborder="0" height="315" src="https://www.youtube.com/embed/ANf4F7ESEiM?start=1167" width="420"></iframe> -->
			<iframe width="560" height="315" src="https://www.youtube.com/embed/ANf4F7ESEiM?rel=0&amp;controls=1&amp;showinfo=1;start=1167" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
			
			<div class="seperator-full"></div>	

			
		</div>

		<div class="content-container">

			<div class="half-width">
				<p><strong>This system was developed and is administered by Anton Janovsky ZR6AIC <a target="_blank" href="https://docs.google.com/forms/d/e/1FAIpQLSfgOJTti_9YisJ3fNSWnff091n61o2643SRkxXJTh_YeODeXA/viewform?formkey=dEZUN2tTUTU1NUdweUxldkcwNmpXNlE6MQ&fromEmail=true">Contact me here</strong></a></p>
				<p><strong>Address:</strong></p>

				<p>
					AMSATSA<br>
					P O Box 90438<br>
					Garsfontein<br>
					0042<br>
					Gauteng<br>
					South Africa
				</p>
			</div>

			<div class="half-width">
				<p class="align-center"><img alt="AMSATSA Logo" src="http://www.amsatsa.org.za/AmsatSA%20(637x640).jpg" style="width: 158px; height: 164px;" /></p>
			</div>

		</div>

	</div> <!-- site-width -->
</div> <!-- main-container -->
</body>
</html>

