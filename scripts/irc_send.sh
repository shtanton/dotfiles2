#!/usr/bin/dash
P=$(find ~/irc -name "in" | awk '{sub(/^.*\/irc\//, ""); sub(/\/in$/, ""); print $0}' | menu.sh)
IN="$HOME/irc/${P}/in"
cat - > $IN
