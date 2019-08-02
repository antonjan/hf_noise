 Instillation Instructions

#Create user hfnoise
sudo adduser hfnoise
sudo usermod -aG sudo hfnoise

#change to hfnoise user with the following command. (dont try to install with other users)
su - hfnoise
#enter your new password
sudo apt-get update
#If you get this error below do the following
#** (appstreamcli:2761): CRITICAL **: Error while moving old database out of the way. AppStream cache update failed.
#then run this command and try again sudo chmod -R a+rX,u+w /var/cache/app-info/xapian/default
#now lets upgrade and get some coffie :-)

sudo apt-get upgrade
#We now need to install git to download the noise monitoring application
sudo apt-get install git
sudo apt-get install cmake
sudo apt-get install libusb-1.0-0-dev
sudo apt-get install python-setuptools
sudo easy_install pip (not requerd in raspberry pi 4)
sudo python -m pip install --upgrade pip setuptools
#sudo pip install image
sudo apt-get install python-imaging (in Pi 4 you need to install python-pil instead)
cd
#for ubuntu 17.10 do the following. (now replased with imagemagic as in Raspberry Pi section)
wget http://archive.ubuntu.com/ubuntu/pool/universe/i/imageinfo/imageinfo_0.04-0ubuntu11_amd64.deb
sudo dpkg -i ./imageinfo_0.04-0ubuntu11_amd64.deb
# for Ubuntu 16.04 do the following (now replased with imagemagic as in Raspberry Pi section)
 wget http://archive.ubuntu.com/ubuntu/pool/universe/i/imageinfo/imageinfo_0.04-0ubuntu10_amd64.deb
sudo dpkg -i ./imageinfo_0.04-0ubuntu10_amd64.deb
# for Raspbery Pi
sudo apt-get install imagemagick
cd
#git clone git://git.osmocom.org/rtl-sdr.git
#Please make sure you use this repository as the osmond one dont support direct conversion mode
git clone https://github.com/keenerd/rtl-sdr.git
cd rtl-sdr/
mkdir build
cd build
cmake ../
make
sudo make install
sudo ldconfig
ls
sudo vi /etc/modprobe.d/no-rtl.conf
#add the following blacklist dvb_usb_rtl28xxu
blacklist rtl2832
blacklist rtl2830
#reboot 
#we now need to install an application that will allow us to reset the USB port where the rtl dongle is installed if it locks up for some reason (this has append when there is lightning in the aria.So what i do is motor if the csv file get updated if not I reset the usb port with this utility.
cd
git clone https://github.com/jkulesza/usbreset.git
cd usbreset
#lets compile the application
cc usbreset.c -o usbreset
#we now need to establish witch usb port is your rtl dongle installed.
sudo lsusb
#we now need to edit the shell script that monitor the csv file update with your rtl usb port details.
#now look for the device with this name "Realtek Semiconductor Corp. RTL2838 DVB-T" in my case it was "Bus 003 Device 004" to be like E.g sudo /home/hfnoise/usbreset/usbreset /dev/bus/usb/003/004
cd
git clone  https://github.com/antonjan/hf_noise.git
cd hf_noise
cd sh
#vi or use your editor and check_if_file_was_updated.sh
#change the line that looks like this "vi /home/rfnoise/Downloads/usbreset/usbreset /dev/bus/usb/"
#002/005" with your detail
#pull the noise monitoring system from github
git clone https://github.com/antonjan/hf_noise.git
#install Apache2 server
sudo apt-get install apache2
sudo systemctl start apache2.service
sudo systemctl enable apache2.service
sudo apt install php7.1 libapache2-mod-php7.1  (in Pi only run sudo apt install php)
sudo a2enmod php7.1
sudo systemctl restart apache2
cd /var/www/html
sudo mkdir hf_noise
sudo mkdir hf_noise/graph
sudo mkdir hf_noise/images
cd hf_noise/graph
sudo cp -r /home/hfnoise/hf_noise/*.php ./
sudo cp -r /home/hfnoise/hf_noise/*.html ./
sudo cp -r /home/hfnoise/hf_noise/*.png ./
cd /var/www/html/hf_noise/images
sudo cp -r /home/hfnoise/hf_noise/image/*.php ./
sudo cp -r /home/hfnoise/hf_noise/image/*.html ./
sudo cp -r /home/hfnoise/hf_noise/image/*.jpg ./
sudo cp -r  /home/hfnoise/hf_noise/image/thumb ./
#now test if hfnoise webserver work.
firefox http://localhost/hf_noise
#you should see the index page with no pictures.
#We now need to install the heatmap application.
#lets go to home directory and install heatmap
cd
#got hf_noise directory and install heatmap by git from github
cd hf_noise
#Get the heatmap python progrm from github
git clone https://github.com/keenerd/rtl-sdr-misc.git 
cd /home/hfnoise/hf_noise/rtl-sdr-misc/heatmap
#give the application execution writes
sudo chmod 776 *.py
#Now we need to install the perl librareries
#CPAN, the Comprehensive Perl Archive Network, is the primary source for #publishing and fetching the latest modules
cd
sudo apt-get install perl build-essential curl
sudo apt-get install rrdtool
sudo apt-get install librrds-perl
cd /usr/local/bin
sudo wget https://raw.github.com/miyagawa/cpanminus/master/cpanm
sudo chmod +x cpanm
cd
sudo cpanm --self-upgrade --sudo
#sudo apt-get install cpanminus
#The following compilations can take some time on Raspberry pi ( had some probles with this prosess and  has now updated on a better metherd to install)
sudo perl -MCPAN -e'shell'
then run the following commands in the perl shell
install Text::Trim
install Text::CSV
install Date::Manip
install RRD::Simple
Pres [Ctrn-c] to exit
#old way
#sudo cpanm Text::Trim
####sudo cpanm Text::CSV
###sudo cpanm Date::Manip
#sudo cpanm Text::Trim
# mite be only trim
#sudo cpanm RRD::Simple
cd
cd hf_noise
cd sh
#run then script to generate rrd db
chmod 776 create_rrd_db.sh
./create_rrd_db.sh
#Ok now connect your HF dongel to your laptop usb port and connect to an antenna.
#Ok now everything should be ready.
#we need to enable the scripts in the crontab (scheduler)
# need to install cronlib
sudo pip install deploycron
#run the script to setup the scheduler
sudo python ./create_crontab.py
#If you want to see how the crontab was setup you can check with this command
sudo crontab -e
#Below is the what you should see
0,5,10,15,20,25,30,35,40,45,50,55 * * * * /home/hfnoise/hf_noise/sh/create_heatmap.sh 0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58 * * * * /home/hfnoise/hf_noise/sh/run_hf_noise_monitor_and_graph.sh 
1,6,11,16,21,26,31,36,41,46,51,56 * * * * /home/hfnoise/sh/load_hf_noise_in_rrd.sh
50 23 * * * /home/hfnoise/hf_noise/uploads/load_todayes_files.sh
#save file and now and we are now done.
#The images and history file should now be automatically being created every 5 minutes.
#Make sure you have along wire antenna connected to your HF rtl dongle to hf noise recordings.
#********************end******************
#How can I check that data is collected.
#run the command
ls -lrt /home/hfnoise/hf_noise
#you should see somthing lyk this
#-rw-r--r-- 1 root    root          0 Nov  8 19:06 hf_monitoring_08-11-2017.cvs
#-rw-r--r-- 1 root    root          0 Nov  8 19:06 hf_monitoring_graph_08-11-2017.cvs
#You should also see graph images in you browser.
#firefox http://localhost/hf_noise/graph/1Mhz_Power.php

#The Master Anaylytics server is now avalibe and you need to register your station at
http://rfnoise.amsatsa.org.za
The master server will send you an email with instructions how to setup your username and password.
Password will be send you via SMS
The following file will have to be edited with your username and password sothat your data can be automatkely send to the master server every hour.
Details to follow>>>>>>>>>>>>



#Known Problems Creation of rrd db. (copy master from git)
rrd db will never grob bigger that 200mb.so dont deend to argive anything here.
CSV files need to be argived otherwise disk will get full.
