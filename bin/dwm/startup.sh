#!/usr/bin/env zsh

# finish setup
xrdb -merge $HOME/.Xresources
$HOME/.fehbg
sct 5500

# dwm bar status
BAR_PROGRAM="$HOME/bin/dwm/dwmbar.py"
while xsetroot -name "`$BAR_PROGRAM`";
do
	sleep 5
done &

# launch some programs
(sleep 3 ; fcitx5) &
picom &
xss-lock slock &
start-pulseaudio-x11 &
syncthing & 
