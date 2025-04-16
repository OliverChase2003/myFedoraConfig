echo "添加 copr"
sudo dnf copr enable thetechshow/appimagelauncher -y

echo "安装 appimage 环境"
sudo dnf install -y \
  appimagelauncher \
  fuse \
  fuse-devel
