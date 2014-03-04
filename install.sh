#!/bin/sh
echo Creating roms directory..
mkdir /home/pi/roms

echo Copying configuration scripts...
cp piforcetools.sh /etc/init.d/
cp interfaces.* /etc/network/

echo Installing Piforce Tools as daemon...
cd /etc/init.d
chown root:root piforcetools.sh
chmod 755 piforcetools.sh
update-rc.d piforcetools.sh defaults

echo Configuring network...
cd /etc/network
chown root:root interfaces.*
chmod 755 interfaces.*
cp interfaces.static interfaces

echo Done! When you reboot, this host will be static configured to 192.168.1.1