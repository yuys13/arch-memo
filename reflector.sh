#!/usr/bin/env bash

set -ue pipefail

sudo pacman -S reflector

sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
sudoedit /etc/xdg/reflector/reflector.conf

sudo systemctl enable --now reflector.service
