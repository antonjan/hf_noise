# hf_noise<br>
This repository will have all the HF Noise monitoring system files.<br>
*************** I am still loading all the files this repository is not compleet ***************<br>
![Alt text](hf_noise_25-06-2017.png?raw=true "HF RF Heatmap for 24H every 2 Minute")<br>
Install rtl_power utility<br>
Install rrdtool<br>
install heatmap.sh<br>
install perl<br>
Install Apacahe SERVER<br>
Install PHP<br>
Install rtl_SDR and librtl<br>
Install usbreset from here https://gist.github.com/x2q/5124616<br>
The usbport reset script requiers this.<br>
#############################################<br>
sudo apt-get install git<br>
#Create user hfnoise<br>
sudo adduser hfnoise<br>
sudo usermod -aG sudo hfnoise<br>
<br>
#change to this user<br>
su - hfnoise<br>
sudo apt-get update<br>
sudo upgrade<br>
sudo apt-get install git<br>
sudo apt install cmake<br>
sudo apt-get install libusb-1.0-0-dev<br>
sudo apt install python-setuptools<br>
sudo easy_install pip<br>
sudo pip install image<br>
cd<br>
wget http://archive.ubuntu.com/ubuntu/pool/universe/i/imageinfo/imageinfo_0.04-0ubuntu11_amd64.deb<br>
sudo dpkg -i ./mageinfo_0.04-0ubuntu11_amd64.deb<br>
cd<br>
#git clone git://git.osmocom.org/rtl-sdr.git<br>
#Please make sure you use this repository as the osmond one dont suport direct convertion mode<br>
git clone https://github.com/keenerd/rtl-sdr.git<br>
cd rtl-sdr/<br>
mkdir build<br>
cd build<br>
cmake ../<br>
make<br>
sudo make install<br>
sudo ldconfig<br>
ls<br>
sudo vi /etc/modprobe.d/no-rtl.conf<br>
#add the following 
blacklist dvb_usb_rtl28xxu<br>
blacklist rtl2832<br>
blacklist rtl2830<br>
#reboot
#we now need to install an aplication that will alow us to reset the USB port where the rtl dongle is installed if it locks up for some reason (this has ahppend when there is lightning in the aria.So what i do is motor if the csv file get updated if not I reset the usb port with this utility.<br>
cd<br>
git clone https://github.com/jkulesza/usbreset.git<br>
cd usbreset<br>
#lets compile the application<br>
cc usbreset.c -o usbreset<br>
#we now need to establish witch usb port is your rtl dongle installed.<br>
sudo lsusb<br
#we now need to edit the shel script that monitor the csv file update with your rtl usb port details.<br> 
#now look for the device with this name "Realtek Semiconductor Corp. RTL2838 DVB-T" in my case it was "Bus 003 Device 004" to be like E.g sudo /home/hfnoise/usbreset/usbreset /dev/bus/usb/003/004<br>
<br>
cd
cd hf_noise
cd sh
vi check_if_file_was_updated.sh
# change the line that looks like this "sudo /home/anton/Downloads/usbreset/usbreset /dev/bus/usb/002/005" with your detail<br>
#pull the noise monitoring system from github<br>
git clone https://github.com/antonjan/hf_noise.git<br>
#install Apache2 server<br>
sudo apt-get install apache2<br>
sudo systemctl start apache2.service<br>
sudo systemctl enable apache2.service<br>
sudo apt install php7.1 libapache2-mod-php7.1<br>
sudo a2enmod php7.1<br>
sudo systemctl restart apache2<br>
cd /var/www/html<br>
sudo mkdir hf_noise<br>
sudo mkdir hf_noise/graph<br>
sudo mkdir hf_noise/images<br>
cd hf_noise/graph<br>
sudo cp -r /home/hfnoise/hf_noise/graph/*.php ./<br>
sudo cp -r /home/hfnoise/hf_noise/graph/*.html ./<br>
sudo cp -r /home/hfnoise/hf_noise/graph*.png ./<br>
sudo cp -r /home/hfnoise/hf_noise/image/*.jpg ./<br>
cd /var/www/html/hf_noise/images<br>
sudo cp -r /home/hfnoise/hf_noise/image/*.php ./<br>
sudo cp -r /home/hfnoise/hf_noise/image/*.html ./<br>
sudo cp -r /home/hfnoise/hf_noise/image/*.jpg ./<br>
sudo cp -r  /home/hfnoise/hf_noise/image/thumb ./ <br>
# now test if hfnoise webserver work.<br>
firefox http://localhost/hf_noise.<br>
#you should see the index page with no pictures.<br>
#We now need to install the heatmap application.<br>
#lets go to home directory and install heatmap<br>
cd<br> 
# got hf_noise directory and install heatmap by gett from github<br>
cd hf_noise<br>
<br>
git clone https://github.com/keenerd/rtl-sdr-misc.git
cd /home/hfnoise/hf_noise/rtl-sdr-misc/heatmap<br>
chmod 776 *.py<br>
<br> 
#CPAN, the Comprehensive Perl Archive Network, is the primary source for publishing and fetching the latest modules <br>
sudo apt-get install perl build-essential curl<br>
sudo apt-get install rddtool<br>
sudo apt-get install librrds-perl<br>
cd /usr/local/bin<br> 
sudo wget https://raw.github.com/miyagawa/cpanminus/master/cpanm<br>
sudo chmod +x cpanm<br>
cd<br>
sudo cpanm --self-upgrade --sudo<br>
#sudo apt-get install cpanminus<br>
sudo cpanm Text::Trim<br>
sudo cpanm  Text::CSV<br>
sudo cpanm  Date::Manip<br>
sudo cpanm Text::Trim<br># mite be only trim
sudo cpanm RRD::Simple<br>
cd<br> 
cd hf_noise<br>
cd sh<br>
#run then script to generate rrd db<br>
./create_rrd_db.sh<br>
#Ok now everything should be ready.<br>
#we need to enable the scripts in the crontab<br>
#edit the crontab and  dd the following<br>
#0,5,10,15,20,25,30,35,40,45,50,55 * * * * /home/hfnoise/hf_noise/sh/create_heatmap.sh
#0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58 * * * * /home/hfnoise/hf_noise/sh/run_hf_noise_monitor_and_graph.sh
#1,6,11,16,21,26,31,36,41,46,51,56 * * * * /home/hfnoise/hf_noise/sh/load_hf_noise_in_rrd.sh
sudo vi crontab -e
#save file and now we are done the images and history file should now be autmatekely beeing created. Make sure you ahva along wire antenna connected to your HF rtl dongl<br>
#***********************************the End ***********************************


#rrdtool update hf_noise.rrd ds-name:30Mhz_Power $recordtime:$rrdfields[29]\n";<br>
echo "Creating rrd database configeration"<br>

rrdtool create  hf_noise.rrd --start now-2d --step 120 DS:1Mhz_Power:GAUGE:120:-50:10 DS:2Mhz_Power:GAUGE:120:-50:10 DS:3Mhz_Power:GAUGE:120:-50:10 DS:4Mhz_Power:GAUGE:120:-50:10 DS:5Mhz_Power:GAUGE:120:-50:10 DS:6Mhz_Power:GAUGE:120:-50:10 DS:7Mhz_Power:GAUGE:120:-50:10 DS:8Mhz_Power:GAUGE:120:-50:10 DS:9Mhz_Power:GAUGE:120:-50:10 DS:10Mhz_Power:GAUGE:120:-50:10 DS:11Mhz_Power:GAUGE:120:-50:10 DS:12Mhz_Power:GAUGE:120:-50:10 DS:13Mhz_Power:GAUGE:120:-50:10 DS:14Mhz_Power:GAUGE:120:-50:10 DS:15Mhz_Power:GAUGE:120:-50:10 DS:16Mhz_Power:GAUGE:120:-50:10 DS:17Mhz_Power:GAUGE:120:-50:10 DS:18Mhz_Power:GAUGE:120:-50:10 DS:19Mhz_Power:GAUGE:120:-50:10 DS:20Mhz_Power:GAUGE:120:-50:10 DS:21Mhz_Power:GAUGE:120:-50:10 DS:22Mhz_Power:GAUGE:120:-50:10 DS:23Mhz_Power:GAUGE:120:-50:10 DS:24Mhz_Power:GAUGE:120:-50:10 DS:25Mhz_Power:GAUGE:120:-50:10 DS:26Mhz_Power:GAUGE:120:-50:10 DS:27Mhz_Power:GAUGE:120:-50:10 DS:28Mhz_Power:GAUGE:120:-50:10 DS:29Mhz_Power:GAUGE:120:-50:10 DS:30Mhz_Power:GAUGE:120:-50:10 RRA:AVERAGE:0.5:1:864000 RRA:AVERAGE:0.5:60:129600 RRA:AVERAGE:0.5:3600:13392 RRA:AVERAGE:0.5:86400:3660<br>

sudo apt-get install librrds-perl<br>
sudo apt-get install rrdtool<br>
perl -MCPAN -e 'install Test::Deep'<br>
perl -MCPAN -e 'install Test::Pod'<br>
perl -MCPAN -e 'install Test::Pod::Coverage'<br>
perl -MCPAN -e 'install RRD::Simple'<br>
######################################################<br>
here is the crontab entries<br>
######################################################<br>
0,5,10,15,20,25,30,35,40,45,50,55 * * * * /home/hfnoise/sh/create_heatmap.sh<br>
0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58 * * * * /home/hfnoise<br>/sh/run_hf_noise_monitor_and_graph.sh<br>
#######################################################<br>
File upload to Master Analytics site will be available when it goes alive.<br>
![Alt text](HF_Graph_monitoring.png?raw=true "HF RF power monitoring")<br>
Configure Crontab to start scripts.<br>
The CSV file format  date, time, Hz low, Hz high, Hz step, samples, dbm, dbm, ...<br>
Problems (Imige rejection nessary 14 Mhz low and high pass filter)
Block Diagram<br>
![Alt text](HF_Noise_Monitor.png?raw=true "Monitoring system Block diagram")<br>
