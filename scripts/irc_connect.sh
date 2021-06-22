#!/usr/bin/dash
P=$(echo "libera.chat" | menu.sh)

case $P in
	"libera.chat")
		PASS="shtanton:"$(pass irc.libera.chat/ah@shtanton.xyz) ii -s "irc.libera.chat" -p 6667 -n shtanton -f "Charlie Stanton" -k PASS
		;;
	*)
		;;
esac
