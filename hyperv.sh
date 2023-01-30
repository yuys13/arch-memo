#!/usr/bin/env bash

set -ue pipefail

sudo pacman -S hyperv

sudo systemctl enable --now hv_fcopy_daemon.service
sudo systemctl enable --now hv_kvp_daemon.service
sudo systemctl enable --now hv_vss_daemon.service
