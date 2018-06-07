sudo -i
rpi-rw
cd /usr/bin
git clone https://github.com/pe1msz/castbin 
mv ./castbin/* .
chmod +x cast-avrdude
chmod +x cast-reset
chmod +x cast-fan
chmod +x cast-enable.sh
cd /var/www/dashboard/admin
git clone https://github.com/pe1msz/myDV-nano 
mv ./myDV-nano/* .
chown -R www-data:www-data ./fw
cd ./fw/pyserial-3.2.1
sudo python ./setup.py install
