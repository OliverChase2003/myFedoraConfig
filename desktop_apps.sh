## dnf source
echo "添加源"
### vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo >/dev/null

## copr
echo "添加 copr"
## Minecraft Linux Launcher

echo "安装其他桌面应用"
## dnf
sudo dnf install -y \
    gthumb \
    celluloid \
    code \
    qbittorrent \

### WPS office

## appimages
### drawio

### the VIA

### FreeCAD