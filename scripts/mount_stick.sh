#!/usr/bin/dash
sudo cryptsetup open "UUID=20c94be7-6e0b-4301-b16a-cab5075c7add" stick
mount /dev/mapper/stick
cd /home/charlie/stick
