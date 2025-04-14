#!/bin/bash
echo "添加源"
## add rpmfusion free & nonfree source
sudo dnf install -y \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

## add vscode source
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\nautorefresh=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" | sudo tee /etc/yum.repos.d/vscode.repo > /dev/null

echo "添加copr"
dnf copr enable lihaohong/yazi
sudo dnf copr enable jstaf/onedriver

echo "更新系统..."
sudo dnf update -y

echo "安装命令行工具"
sudo dnf install -y \
	fish \
	zsh \
	git \
	neovim \
	yazi \
	fzf \
	fd \
	bat

echo "配置命令行工具"
## neovim
git clone https://github.com/LazyVim/starter ~/.config/nvim

## fish
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish

## zsh 

echo "安装工具链"
sudo dnf install -y \
	gcc arm-none-eabi-gcc \
	gdb arm-none-eabi-gdb \
	java-21-openjdk \
	python3 python3-pip \

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
	gnome-browser-connector \

echo "安装必要的 GNOME 桌面应用"
sudo dnf install -y \
  ptyxis \
  nautilus \
  gnome-control-center \
  gnome-tweaks \
	gnome-extensions-app \

## remove gnome help
sudo dnf remove gnome-tour

echo "安装常用的 GNOME 扩展"
pip install gnome-extensions-cli
gnome-extensions-cli install \
	appindicatorsupport@rgcjonas.gmail.com \
	autohide-battery@sitnik.ru \
	blur-my-shell@aunetx \
	caffeine@patapon.info \
	clipboard-indicator@tudmotu.com \
	compiz-alike-magic-lamp-effect@hermes83.github.com \
	compiz-windows-effect@hermes83.github.com \
	drive-menu@gnome-shell-extensions.gcampax.github.com \
	gnome-fuzzy-app-search@gnome-shell-extensions.Czarlie.gitlab.com \
	system-monitor@gnome-shell-extensions.gcampax.github.com \
	user-theme@gnome-shell-extensions.gcampax.github.com \

echo "安装 appimage 环境"
sudo dnf install -y \
	fuse \
	fuse-devel \

## install appimage launcher
wget -P ~/Downloads/ https://github.com/TheAssassin/AppImageLauncher/releases/download/v3.0.0-alpha-4/appimagelauncher_3.0.0-alpha-4-gha253.36951ec_x86_64.rpm
sudo dnf install ~/Download/appimagelauncher_3.0.0-alpha-4-gha253.36951ec_x86_64.rpm

echo "安装主题"
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git ~/.softwares/WhiteSur-gtk-theme/
chmod +x ~/.software/WhiteSur-gtk-theme/install.sh
sudo ~/.software/WhiteSur-gtk-theme/install.sh -N --shell -i fedora normal
chmoe +x ~/.software/WhiteSur-gtk-theme/tweaks.sh
sudo ~/.software/WhiteSur-gtk-theme/tweaks.sh --gdm -i fedora -noblur

echo "安装输入法"
mkdir -p ~/.config/ibus/
git clone https://github.com/iDvel/rime-ice.git ./ ~/.config/ibus/rime/ --depth 1
sudo dnf install ibus-rime -y

echo "安装其他桌面应用"
## dnf
sudo dnf install -y \
	firefox \
	code \
	bottles \
	steam \

sudo ~/.software/WhiteSur-gtk-theme.git/tweaks.sh --firefox flat

## appimage

