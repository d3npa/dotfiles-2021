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
xss-lock slock &
start-pulseaudio-x11 &
fcitx5 &
syncthing & 
