#!/bin/bash
arch=$(uname -m)
echo "添加源"
## add rpmfusion free & nonfree source
sudo dnf install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo "更新系统..."
sudo dnf update -y

echo "配置命令行工具"
## neovim
git clone https://github.com/LazyVim/starter ~/.config/nvim

## fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish

## zsh

echo "安装最小 GNOME 核心组件..."
sudo dnf install -y \
  gdm \
  gnome-shell \
  gnome-session \
  mutter \
  gnome-settings-daemon \
  gnome-keyring \
  gnome-backgrounds \
  adwaita-icon-theme \
  liberation-fonts \
  fontconfig \
  gvfs \
  xdg-user-dirs \
  gsettings-desktop-schemas \
  gnome-browser-connector

sudo systemctl set-default graphical.target

echo "安装必要的 GNOME 桌面应用"
sudo dnf install -y \
  ptyxis \
  nautilus \
  gnome-control-center \
  gnome-tweaks \
  gnome-extensions-app \
  firefox

## remove gnome help
sudo dnf remove  -y \
  gnome-tour
