#!/usr/bin/env bash

set -ue pipefail

sudo pacman -S \
	alacritty \
	bat \
	curl \
	exa \
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
	neofetch \
	neovim \
	nodejs \
	ripgrep \
	rustup \
	shellcheck \
	shfmt \
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
makepkg -si

cd "$workdir"
rm -rf "$tempdir"

yay -S \
	actionlint \
	ghq \
	gitlint \
	google-chrome \
	hadolint-bin \
	neovim-remote \
	ttf-hackgen \
	visual-studio-code-bin \
	zsh-theme-powerlevel10k-git
