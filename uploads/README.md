Loading cvs files to master server
==================================
# Upload status
If you get the new Raspberry Pi SD Cards the patche is already Applyed.
The Bootable Linux USB memory stick is still dont have patch loaded.
>>>>>>> 11431b990f208ae1a590d73ad156c8e214c94b4a

This script uploads a cvs with 2 Million rows in 60 seconds.

Instructions :

1. This files will load the CVS files one directory down to the master server. 
2. The scripts will compress the data and upload it to mater server using username and password.
3. You need to create a crotab entry as follows.
50 23 * * * /home/hfnoise/hf_noise/uploads/load_all_files.sh

TO DO<br>
Archve loaded files so it dose not get reloaded.<br>
1. This files will load the CVS files one directory down to the master server.<br> 
2. The scripts will compress the data and upload it to mater server using username and password.<br>
3. You need to create a crotab entry as follows.<br>
4. IF your country domain is za (Then z = 26 caracter in alphabet and a = 1 (total = 27) then the first digit of the Crontab must be replased with 27<br>
27 23 * * * /home/hfnoise/hf_noise/uploads/load_all_files.sh<br>
5. Create web admin page for Remote Station.<br>

# Patch for older Raspberry Pi and bootable stick hf_noise monitoring systems.(upload patch)
Run the following commands in the hf_noise directory as user hfnoise.<br>
mkdir uploads<br>
sudo apt-get install php-curl<br>
cd uploads<br>
Run the following Command<br>
wget https://raw.githubusercontent.com/antonjan/hf_noise/master/uploads/compres_csv_file.php<br>
wget https://raw.githubusercontent.com/antonjan/hf_noise/master/uploads/compres_csv_file_arg.php<br>
wget https://raw.githubusercontent.com/antonjan/hf_noise/master/uploads/load_all_files.sh<br>
wget https://raw.githubusercontent.com/antonjan/hf_noise/master/uploads/load_todayes_files.sh<br>
Then edit your cridensials username and password in the following files.<br>
You will need to edit the following section in the file that was downloaded compres_csv_file.php and compres_csv_file_arg.php<br>
Chnage the "Your ID" to your call sign and "Pass_Key" to your SMS details <br>
//################Call Sign and  Key ######################<br>
//Change your station ID here.<br>
$Call_sign="Your ID";<br>
//Change your Key here<br>
$Pass_Key="12345678901";<br>
//Change your GPS details as well

//##########################################################<br>
<br>
Add the following in the crontab. (This will run the daley data 10 to midnight)<br>
50 23 * * * /home/hfnoise/hf_noise/uploads/load_todayes_files.sh<br>
# If you want to load all files that was created before then run the following command.<br>
This can take a long time. (Depending on how long your history is this can take ouers.)<br>
/home/hfnoise/hf_noise/uploads/load_all_files.sh<br>