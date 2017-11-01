# hf_noise<br>
This repository will have all the HF Noise monitoring system files.<br>
*************** I am still loading all the files this repository is not compleet ***************<br>
![Alt text](hf_noise_25-06-2017.png?raw=true "HF RF Heatmap for 24H every 2 Minute")<br>
Install rtl_power utility<br>
Install rrdtool<br>
install heatmap.sh<br>
install perl<br>
Install Shell scripts<br>
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
ls<br>
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
sudo mkdir hf_noise/image<br>
cd hf_noise/graph<br>
sudo cp -r /home/hfnoise/hf_noise/*.php ./<br>
sudo cp -r /home/hfnoise/hf_noise/*.html ./<br>
sudo cp -r /home/hfnoise/hf_noise/*.png ./<br>
# now test if hfnoise webserver work.<br>
firefox http://localhost/hf_noise.<br>
#you should see the index page with no pictures.<br>
#CPAN, the Comprehensive Perl Archive Network, is the primary source for publishing and fetching the latest modules <br>
apt-get install perl build-essential curl<br>
sudo apt-get install cpanminus<br>

sudo apt-get install cpanminus<br>
sudo cpanm Text::Trim<br>
sudo cpanm  Text::CSV<br>
sudo cpanm  Date::Manip<br>
sudo cpanm Text::Trim qw(trim)<br>
sudo cpanm RRD::Simple ()<br>
#rrdtool update hf_noise.rrd ds-name:30Mhz_Power $recordtime:$rrdfields[29]\n";<br>
echo "Creating rrd database configeration"<br>

rrdtool create  hf_noise.rrd --start now-2d --step 120 DS:1Mhz_Power:GAUGE:120:-40:10 DS:2Mhz_Power:GAUGE:120:-40:10 DS:3Mhz_Power:GAUGE:120:-40:10 DS:4Mhz_Power:GAUGE:120:-40:10 DS:5Mhz_Power:GAUGE:120:-40:10 DS:6Mhz_Power:GAUGE:120:-40:10 DS:7Mhz_Power:GAUGE:120:-40:10 DS:8Mhz_Power:GAUGE:120:-40:10 DS:9Mhz_Power:GAUGE:120:-40:10 DS:10Mhz_Power:GAUGE:120:-40:10 DS:11Mhz_Power:GAUGE:120:-40:10 DS:12Mhz_Power:GAUGE:120:-40:10 DS:13Mhz_Power:GAUGE:120:-40:10 DS:14Mhz_Power:GAUGE:120:-40:10 DS:15Mhz_Power:GAUGE:120:-40:10 DS:16Mhz_Power:GAUGE:120:-40:10 DS:17Mhz_Power:GAUGE:120:-40:10 DS:18Mhz_Power:GAUGE:120:-40:10 DS:19Mhz_Power:GAUGE:120:-40:10 DS:20Mhz_Power:GAUGE:120:-40:10 DS:21Mhz_Power:GAUGE:120:-40:10 DS:22Mhz_Power:GAUGE:120:-40:10 DS:23Mhz_Power:GAUGE:120:-40:10 DS:24Mhz_Power:GAUGE:120:-40:10 DS:25Mhz_Power:GAUGE:120:-40:10 DS:26Mhz_Power:GAUGE:120:-40:10 DS:27Mhz_Power:GAUGE:120:-40:10 DS:28Mhz_Power:GAUGE:120:-40:10 DS:29Mhz_Power:GAUGE:120:-40:10 DS:30Mhz_Power:GAUGE:120:-40:10 RRA:AVERAGE:0.5:1:864000 RRA:AVERAGE:0.5:60:129600 RRA:AVERAGE:0.5:3600:13392 RRA:AVERAGE:0.5:86400:3660<br>

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
