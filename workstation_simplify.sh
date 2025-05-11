## if workstation installed

## remove copr
sudo dnf copr remove phracek/PyCharm

## remove source
sudo rm /etc/yum.repos.d/google-chrome.repo

## remove some gnome-apps
sudo dnf remove -y \
    *abrt* \
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
    *libreoffice* \
    rhythmbox \
    simple-scan \
    snapshot \
    totem \
    yelp

## remove libreoffice
sudo dnf remove -y \
    @libreoffice \
    @desktop-accessibility \
    @container-management

## remove gnome-shell-extension installed by system
sudo dnf remove -y \
    $(dnf list --installed | grep gnome-shell-extension- | awk '{print $1}')

## remove flatpak
sudo dnf remove -y \
    $(dnf list --installed | grep flatpak | awk '{print $1}')

## install
sudo dnf install -y \
    gnome-extensions-app \
    gnome-tweaks \

## add groups for current user
sudo usermod -aG dialout $USER