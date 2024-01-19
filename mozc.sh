#!/usr/bin/env bash

set -ue pipefail

sudo pacman -S --noconfirm fcitx5-mozc fcitx5-qt fcitx5-gtk fcitx5-configtool

cat <<EOF >>~/.xprofile
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
EOF

if [[ -f ~/.config/i3/config ]]; then
	echo exec --no-startup-id fcitx5 -d >>~/.config/i3/config
fi
