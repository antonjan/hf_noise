Loading cvs files to master server
==================================

This script uploads a cvs with 2 Million rows in 60 seconds.

Instructions :

1. This files will load the CVS files one directory down to the master server. 
2. The scripts will compress the data and upload it to mater server using username and password.
3. You need to create a crotab entry as follows.
50 23 * * * /home/hfnoise/hf_noise/uploads/load_all_files.sh

TO DO<br>
Archve loaded files so it dose not get reloaded.<br>

# Patch for older Raspberry Pi and bootable stick hf_noise monitoring systems.(upload patch)
Run the following commands in the hf_noise directory as user hfnoise.<br>
mkdir uploads<br>
cd uploads<br>
Run the following Command<br>
wget https://raw.githubusercontent.com/antonjan/hf_noise/master/uploads/compres_csv_file.php<br>
wget https://raw.githubusercontent.com/antonjan/hf_noise/master/uploads/compres_csv_file_arg.php<br>
wget https://raw.githubusercontent.com/antonjan/hf_noise/master/uploads/load_all_files.sh<br>
wget https://raw.githubusercontent.com/antonjan/hf_noise/master/uploads/load_todayes_files.sh<br>
Add the following in the crontab<br>
50 23 * * * /home/hfnoise/hf_noise/uploads/load_todayes_files.sh<br>
# If you want to load all files that was created before then run the following command.<br>
This can take a long time. (Depending on how long your history is this can take ouers.)<br>
/home/hfnoise/hf_noise/uploads/load_all_files.sh<br>
