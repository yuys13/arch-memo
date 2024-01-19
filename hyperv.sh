#!/usr/bin/env bash

set -ue pipefail

sudo pacman -S --noconfirm hyperv

sudo systemctl enable --now hv_fcopy_daemon.service
sudo systemctl enable --now hv_kvp_daemon.service
sudo systemctl enable --now hv_vss_daemon.service
