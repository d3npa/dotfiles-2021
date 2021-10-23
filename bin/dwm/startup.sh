#!/usr/bin/env zsh

# finish setup
xrdb -merge $HOME/.Xresources
xss-lock slock &
picom &
sct 5500
$HOME/.fehbg

# dwm bar status
BAR_PROGRAM="$HOME/bin/dwm/dwmbar.py"
while xsetroot -name "`$BAR_PROGRAM`";
do
	sleep 5
done &

# launch some programs
syncthing & 
fcitx5 &
