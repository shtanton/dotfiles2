#!/usr/bin/dash
SEARCH=$(echo "" | menu.sh)
netsurf "https://html.duckduckgo.com/html/search?q=$SEARCH"
