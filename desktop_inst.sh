#!/bin/bash
arch=$(uname -m)
echo "添加源"
## add rpmfusion free & nonfree source
sudo dnf install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo "更新系统..."
sudo dnf update -y

echo "安装 gnome-desktop"
sudo dnf install -y \
@gnome-desktop --exclude=\
baobab,\
evince,\
evince-djvu,\
gnome-calculator,\
gnome-calendar,\
gnome-characters,\
gnome-clocks,\
gnome-color-manager,\
gnome-contacts,\
gnome-epub-thumbnailer,\
gnome-font-viewer,\
gnome-logs,\
gnome-maps,\
gnome-tour,\
gnome-user-docs,\
gnome-user-share,\
gnome-weather,\
loupe,\
simple-scan,\
snapshot,\
totem,\
yelp,\
gnome-boxes,\
gnome-connections,\
gnome-initial-setup,\
gnome-software,\
gnome-text-editor,\
flatpak-libs,\
gnome-shell-extension-apps-menu,\
gnome-shell-extension-launch-new-instance,\
gnome-shell-extension-places-menu,\
gnome-shell-extension-window-list \
firefox

echo "安装系统 emoji"
sudo dnf install -y \
	default-fonts-core-emoji \
	google-noto-color-emoji-fonts \
	cldr-emoji-annotation \

echo "安装音频"
sudo dnf install -y \
	alsa-sof-firmware

echo "安装 WiFi"
sudo dnf install -y \
	iwlwifi-dvm-firmware \
	iwlwifi-mvm-firmware \
	akmod-wl

sudo systemctl set-default graphical.target
sudo reboot