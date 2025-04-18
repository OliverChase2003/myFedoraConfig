## if workstation installed
## remove some gnome-apps
sudo dnf remove -y \
    baobab \
    evince \
    evince-djvu \
    gnome-boxes \
    gnome-calculator \
    gnome-calendar \
    gnome-characters \
    gnome-clocks \
    gnome-color-manager \
    gnome-connections \
    gnome-contacts \
    gnome-epub-thumbnailer \
    gnome-font-viewer \
    gnome-initial-setup \
    gnome-logs \
    gnome-maps \
    gnome-software \
    gnome-text-editor \
    gnome-tour \
    gnome-user-docs \
    gnome-user-share \
    gnome-weather \
    loupe \
    simple-scan \
    snapshot \
    totem \
    yelp

## remove libreoffice
sudn dnf remove -y @libreoffice

## remove gnome-shell-extension installed by system
sudo dnf remove -y $(dnf list --installed | grep gnome-shell-extension- | awk '{print $1}')

## remove flatpak
sudo dnf remove -y $(dnf list --installed | grep flatpak | awk '{print $1}')

## install
sudo dnf install -y \
    gnome-extensions-app \
    gnome-tweaks