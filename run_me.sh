sudo -i
rpi-rw
cd /usr/bin
git clone https://github.com/pe1msz/castbin 
mv ./castbin/* .
rm -r ./castbin
chmod +x cast-avrdude
chmod +x cast-reset
chmod +x cast-fan
chmod +x cast-enable.sh
cd /var/www/dashboard/admin
git clone https://github.com/pe1msz/myDV-nano 
mv ./myDV-nano/* .
rm -r ./myDV-nano
chown -R www-data:www-data ./fw
cd ./fw/pyserial-3.2.1
sudo python ./setup.py install
cd ..
cd ./dvmega
chmod +x flash_mega.sh

