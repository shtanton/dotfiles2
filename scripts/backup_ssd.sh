#!/usr/bin/dash
rsync -aAXv --delete-excluded --delete \
--exclude /dev \
--exclude /proc \
--exclude /sys \
--exclude /tmp \
--exclude /run \
--exclude /mnt \
--exclude /lost+found \
/ charlie@192.168.0.19:/mnt/hdd/conorssd
