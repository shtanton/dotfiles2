#!/usr/bin/dash
rsync -aAXv --delete-excluded --delete --ignore-errors \
charlie@shtanton.xyz:/mnt/hdd/. /mnt/hdd/backup
