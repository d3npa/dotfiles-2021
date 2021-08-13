#!/usr/bin/env zsh

export PATH="/home/user/.local/bin:$PATH"
export PATH="$HOME/bin:$HOME/bin/dwm:$PATH"

export LANG='ja_JP.UTF-8'
export LANGUAGE='ja_JP:ja'
export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'

export EDITOR="$(which nvim)"
export BROWSER="$(which firefox)"
export VAGRANT_DEFAULT_PROVIDER='libvirt'

source "$HOME/.cargo/env"
