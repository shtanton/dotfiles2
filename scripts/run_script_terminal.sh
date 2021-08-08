#!/usr/bin/dash
alacritty -e fish -C "$(ls $HOME/scripts | menu.sh)"
