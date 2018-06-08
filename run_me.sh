#!/bin/sh
sudo rpi-rw
sudo cd /usr/bin
sudo git clone https://github.com/pe1msz/castbin 
sudo mv ./castbin/* .
sudo rm -r ./castbin
sudo chmod +x cast-avrdude
sudo chmod +x cast-reset
sudo chmod +x cast-fan
sudo chmod +x cast-enable.sh
sudo cd /var/www/dashboard/admin
sudo git clone https://github.com/pe1msz/myDV-nano 
sudo mv ./myDV-nano/* .
sudo rm -r ./myDV-nano
sudo chown -R www-data:www-data ./fw
sudo cd ./fw/pyserial-3.2.1
sudo python ./setup.py install
sudo cd ..
sudo cd ./dvmega
sudo chmod +x flash_mega.sh

