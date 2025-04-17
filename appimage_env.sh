echo "获取最新appimage launcher"
arch=$(uname -m)
version="3.0.0-alpha-4"
wget -P ~/Downloads/ https://github.com/TheAssassin/AppImageLauncher/releases/download/v"$version"/appimagelauncher_"$version"-gha253.36951ec_"$arch".rpm
sudo dnf install ~/Downloads/appimagelauncher_"$version"-gha253.36951ec_"$arch".rpm

echo "安装 appimage 环境"
sudo dnf install -y \
  appimagelauncher \
  fuse \
  fuse-devel
