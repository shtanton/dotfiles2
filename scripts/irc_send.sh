#!/usr/bin/dash
P=$(find ~/irc -name "in" | awk '{sub(/^.*\/irc\//, ""); sub(/\/in$/, ""); print $0}' | menu.sh)
IN="$HOME/irc/${P}/in"
MSG=$(echo "" | menu.sh)
echo $MSG > $IN
