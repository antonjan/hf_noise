<html>
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
                <a href="/hf_noise/about_us.php">About Us</a>
                <a href="http://rfnoise.amsatsa.org.za/contact_us.php">Contact Us</a>
            </div>

        </div> <!-- site-width -->
    </div> <!-- main-container --> 
</div>


<div class="main-container full-width">
    <div class="site-width">
        <div class="content-container">
            <h3 class="align-center">Register Your Remote Monitoring Station</h3>
            <h5 class="align-center">Complete the following steps to to have your station linked.</h5>

            <div class="seperator"></div>

            <div class="intro-box">
                <p>By adding your HF Noise monitoring system to the main Server will allow you to have your station linked to the main index page and will put your station position on the google map.</p>
                <p>You will also receive a security Key that you will need to add to your remote station via an SMS for your station to allow it to push the rf_noise measurement recordings to the main server so it could be added and correlated with all the other station measurement information.</p>
                <p>After registration, you will receive an SMS with your key and an e-mail with your Remote station configuration instructions.</p>
            </div>
        </div>

         </div> <!-- site-width -->
         <div class="site-width">

        <div class="content-container">
            <div class="form-container register-form">

                <!-- <h4 class="align-center">Register Your Station</h4>
                <p class="align-center">Please complete the following details</p> -->
                <h4 class="align-center" style="margin-top: 0px;">Register Your Station</h4>

                <div class="seperator"></div>

                <form action="add_reg_station.php" method="post">

                    <h5 class="underline-1">Station Details</h5>

                    <label for="Station_Call_sign">Station Call Sign: (Dont use "-" in calsign)</label>
                    <input type="text" id="Station_Call_sign" name="Station_Call_sign" placeholder="ZS6ZZZ" required> <br>



                        <span class="half-input">
                            <label for="Remote_Station_Key">Station Key receved via SMS : </label>
                            <input type= "text" id="Remote_Station_Key" name="Remote_Station_Key" placeholder="876412387rtwegu" required> <br>
                        </span>

			<span class="half-input">
                            <label for="Enable_Filter_Board">Enabel HF filter Board : </label>
			    <input type= "text" id="Remote_Filter_Enable" name="Remote_Filter_Enable" placeholder="Y/N" required> <br>
			 </span>

                    <!-- <div class="seperator"></div> -->

                    <h5 class="underline-1">Station Location Details</h5>

                    <div class="form-input-container">
                        <span class="half-input">
                        <label for="Remote_station_coordinates_lat">Station coordinates Lat:</label>
                        <input type="text" id="Remote_station_coordinates_lat" name="Remote_station_coordinates_lat" placeholder="-26.34" required><br>
                        </span>

                        <span class="half-input">
                        <label for="Remote_station_coordinates_long">Station coordinates Long: </label>
                        <input type= "text" id="Remote_station_coordinates_long" name="Remote_station_coordinates_long" placeholder="27.3" required><br>
                        </span>
                    </div>



                    <div class="form-input-container">

                        <span class="half-input">
                            <input id="submit" type="submit" value="Submit">
                        </span>
                    </div>
                    
                    

                    

                </form>
            </div>
        </div>

    </div> <!-- site-width -->
</div> <!-- main-container -->

</body>
</html>


