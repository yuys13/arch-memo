#!/usr/bin/env bash

set -ue pipefail

sudo pacman -S rofi arandr

echo export TERMINAL=alacritty >>~/.xprofile

if [[ ! -d ~/.config/i3 ]]; then
	mkdir -p ~/.config/i3
	chmod 700 ~/.config/i3
fi

if [[ -f ~/.config/i3/config ]]; then
	cp ~/.config/i3/config ~/.config/i3/config.bak
fi

BASEDIR=$(dirname "$0")
cp "${BASEDIR}"/i3/config ~/.config/i3/config

echo i3/config has been updated. Please check the diff with the following command:
echo diff ~/.config/i3/config.bak ~/.config/i3/config
echo Create ~/.screenlayout/defaults.sh using the arandr.
