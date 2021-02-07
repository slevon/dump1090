#!/bin/bash
#Source: https://discussions.flightaware.com/t/piaware-v-3-7-1-on-debian-10-0-buster-amd64-intel-pc/52414
#How to: 
# run:  git clone https://github.com/slevon/dump1090.git
#	cd dump1090

sudo apt install -y git pkg-config libncurses5-dev lighttpd libbladerf-dev
sudo apt install -y git lighttpd
sudo apt install -y build-essential debhelper dh-systemd
sudo apt install -y libboost-system-dev libboost-program-options-dev libboost-regex-dev
sudo apt install -y libboost-filesystem-dev libsoapysdr-dev soapysdr-module-rtlsdr
sudo apt install -y debhelper dh-systemd librtlsdr-dev libusb-1.0-0-dev

###Builing the source
sudo dpkg-buildpackage -b
#cd ../
sudo dpkg -i dump1090-fa_*.deb
sudo systemctl restart dump1090-fa


