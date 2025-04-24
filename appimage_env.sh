echo "获取appimage launcher"
arch=$(uname -m)
version="3.0.0-alpha-4"
gha="gha253.36951ec"
wget -P ~/Downloads/ https://github.com/TheAssassin/AppImageLauncher/releases/download/v"$version"/appimagelauncher_"$version"-"$gha"_"$arch".rpm
sudo dnf install -y ~/Downloads/appimagelauncher_"$version"-"$gha"_"$arch".rpm

echo "安装 appimage 环境"
sudo dnf install -y \
    appimagelauncher \
    fuse \
    fuse-devel
