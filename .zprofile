#!/usr/bin/env zsh

# If running from tty1 start sway
if [ "$(tty)" = "/dev/tty1" ]; then
	exec xinit
fi
