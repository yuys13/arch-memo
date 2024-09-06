#!/usr/bin/env bash

set -ue pipefail

LANG=C sudo pacman -Syu --noconfirm

LANG=C sudo pacman -S --noconfirm \
	alacritty \
	bat \
	curl \
	eza \
	fastfetch \
	fd \
	fish \
	fisher \
	fzf \
	git \
	github-cli \
	go \
	htop \
	lua51 \
	luacheck \
	luarocks \
	man-db \
	neovim \
	nodejs \
	ripgrep \
	rustup \
	shellcheck \
	shfmt \
	skktools \
	stylua \
	tailscale \
	tig \
	tmux \
	tokei \
	unzip \
	vim \
	vint \
	wezterm \
	wget \
	xsel \
	yamllint \
	zsh \
	zsh-autosuggestions \
	zsh-completions \
	zsh-syntax-highlighting

workdir=$(pwd)
tempdir=$(mktemp -d)
cd "$tempdir"

git clone https://aur.archlinux.org/yay.git
cd yay
LANG=C makepkg -si --noconfirm

cd "$workdir"
rm -rf "$tempdir"

LANG=C yay -S --noconfirm \
	actionlint \
	ghq \
	gitlint \
	google-chrome \
	hadolint-bin \
	neovim-remote \
	ttf-hackgen \
	visual-studio-code-bin \
	zsh-theme-powerlevel10k-git

LANG=C yay --devel --save
