#!/usr/bin/dash
P=$(echo "web
discord
volume
email
terminal
zoom
steam" | menu.sh)

MOZ_ENABLE_WAYLAND=1
QT_QPA_PLATFORM=wayland
SDL_VIDEODRIVER=wayland

case $P in
    web)
        firefox
        ;;
    discord)
        discord
        ;;
    volume)
        pavucontrol
        ;;
    email)
        thunderbird
        ;;
    terminal)
        alacritty
        ;;
    zoom)
        QT_QPA_PLATFORM=xcb zoom
        ;;
    steam)
        SDL_VIDEODRIVER=x11 TERM=xterm steam
        ;;
    *)
        ;;
esac
