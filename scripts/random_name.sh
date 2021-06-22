#!/bin/dash
FIRST=$(awk '{for(i=0;i<$1;i++)print $2}' ~/data/first_names | shuf -n 1)
LAST=$(awk '{for(i=0;i<$1;i++)print $2}' ~/data/surnames | shuf -n 1)

echo $FIRST $LAST
