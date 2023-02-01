#!/usr/bin/env bash

I3CONFDIR="$HOME/.config/i3"
ROFICONFDIR="$HOME/.config/rofi"

set -ue pipefail

sudo pacman -S rofi arandr

echo export TERMINAL=alacritty >>~/.xprofile

if [[ ! -d $I3CONFDIR ]]; then
	mkdir -p "$I3CONFDIR"
	chmod 700 "$I3CONFDIR"
fi

if [[ ! -d $ROFICONFDIR ]]; then
	mkdir -p "$ROFICONFDIR"
	chmod 700 "$ROFICONFDIR"
fi

if [[ -f $I3CONFDIR/config ]]; then
	cp "$I3CONFDIR"/config "$I3CONFDIR"/config.bak
fi

BASEDIR=$(dirname "$0")
cp "${BASEDIR}"/i3/config "$I3CONFDIR"/config
cp "${BASEDIR}"/rofi/config.rasi "$ROFICONFDIR"/config.rasi

echo i3/config has been updated. Please check the diff with the following command:
echo diff "$I3CONFDIR"/config.bak "$I3CONFDIR"/config
echo Create ~/.screenlayout/defaults.sh using the arandr.
