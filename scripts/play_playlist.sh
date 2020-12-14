#!/usr/bin/dash
echo '{"command": ["quit"]}' | socat - /tmp/mpvsocket ;
mpv --input-ipc-server=/tmp/mpvsocket --loop-playlist --no-audio-display --playlist=$(find $HOME/music/playlists -type f | menu.sh)
