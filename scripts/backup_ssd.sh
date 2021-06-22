#!/usr/bin/dash
rsync -aAXv --delete-excluded --delete --ignore-errors \
--exclude /dev \
--exclude /proc \
--exclude /sys \
--exclude /tmp \
--exclude /run \
--exclude /mnt \
--exclude /lost+found \
/ charlie@shtanton.xyz:~/conor/ssd
