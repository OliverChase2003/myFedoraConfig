echo "添加源"
## add vscode source
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo >/dev/null

echo "添加 copr"
sudo dnf copr enable jstaf/onedriver

echo "安装其他桌面应用"
## dnf
sudo dnf install -y \
	onedriver \
  code \
  bottles \
  steam
