#!/usr/bin/dash
echo '{"command": ["quit"]}' | socat - /tmp/mpvsocket ;
TARGET=$(echo "playlist
new
oxygene
retrowave
retrowave.one
electroswing-radio
drumandbass.fm
bbc radio one
paste" | menu.sh)
case $TARGET in
	playlist|oxygene|retrowave|new)
		mpv --input-ipc-server=/tmp/mpvsocket --loop-playlist --no-audio-display --playlist="/home/charlie/music/playlists/$TARGET"
		;;
	retrowave.one)
		mpv --input-ipc-server=/tmp/mpvsocket --no-audio-display "http://85.234.59.191:8000/stream.m3u"
		;;
	electroswing-radio)
		mpv --input-ipc-server=/tmp/mpvsocket --no-audio-display "https://streamer.radio.co/s2c3cc784b/listen"
		;;
	drumandbass.fm)
		mpv --input-ipc-server=/tmp/mpvsocket --no-audio-display "http://radio.drumandbass.fm/listen192.m3u"
		;;
	"bbc radio one")
		mpv --input-ipc-server=/tmp/mpvsocket --no-audio-display ~/data/bbc_radio_1.pls
		;;
	"paste")
		mpv --input-ipc-server=/tmp/mpvsocket --loop --no-audio-display --vid=no $(wl-paste)
		;;
	*)
		;;
esac
