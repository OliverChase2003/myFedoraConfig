#!/bin/bash
arch=$(uname -m)
echo "添加源"
## add rpmfusion free & nonfree source
sudo dnf install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

echo "更新系统..."
sudo dnf update -y

sudo dnf install @gnome-desktop --exclude=\
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
flatpak-libs

sudo systemctl set-default graphical.target