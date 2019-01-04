#!/bin/sh
sudo mount -o remount,rw /
sudo git clone https://github.com/pe1msz/castbin /usr/bin/castbin
sudo mv /usr/bin/castbin/* /usr/bin/. 
sudo mv /usr/bin/CastFan /etc/init.d/.
sudo rm -r /usr/bin/castbin
sudo chmod +x /usr/bin/cast-avrdude
sudo chmod +x /usr/bin/cast-reset
sudo chmod +x /usr/bin/cast-fan
sudo git clone https://github.com/pe1msz/myDV-nano /var/www/dashboard/admin/myDV-nano
sudo mv /var/www/dashboard/admin/myDV-nano/*  /var/www/dashboard/admin/
sudo rm -r /var/www/dashboard/admin/myDV-nano
sudo chown -R www-data:www-data /var/www/dashboard/admin/fw
sudo sudo chmod +x /var/www/dashboard/admin/fw/dvmega/flash_mega.sh
sudo chmod +x /etc/init.d/CastFan
cd /etc/init.d
sudo update-rc.d CastFan defaults
cd /var/www/dashboard/admin/fw/pyserial-3.2.1 
sudo python setup.py install
sudo reboot now
