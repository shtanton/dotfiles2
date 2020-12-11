#!/usr/bin/dash
echo '{"command": ["quit"]}' | socat - /tmp/mpvsocket ;
mpv --input-ipc-server=/tmp/mpvsocket --loop-playlist --no-audio-display --playlist=$(fd -t f --max-depth=1 . /mnt/hdd/music | menu.sh)
