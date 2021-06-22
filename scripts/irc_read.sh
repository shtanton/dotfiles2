#!/usr/bin/dash
P=$(find ~/irc -name "out" | awk '{sub(/^.*\/irc\//, ""); sub(/\/out$/, ""); print $0}' | menu.sh)
OUT="$HOME/irc/${P}/out"
tail -f $OUT
