## DNF
echo "安装必要的软件包"
sudo dnf install -y \
  python3-pip

## gnome-extensions
echo "安装常用的 GNOME 扩展"
pip install gnome-extensions-cli
gnome-extensions-cli install \
app-hider@lynith.dev \
user-theme@gnome-shell-extensions.gcampax.github.com \
system-monitor@gnome-shell-extensions.gcampax.github.com \
drive-menu@gnome-shell-extensions.gcampax.github.com \
blur-my-shell@aunetx \
compiz-windows-effect@hermes83.github.com \
compiz-alike-magic-lamp-effect@hermes83.github.com \
caffeine@patapon.info \
clipboard-indicator@tudmotu.com \
gnome-fuzzy-app-search@gnome-shell-extensions.Czarlie.gitlab.com \
hide-volume-indicator@stephaniebread \
autohide-battery@sitnik.ru \
workspace-indicator@gnome-shell-extensions.gcampax.github.com \
tweaks-system-menu@extensions.gnome-shell.fifi.org

## theme
echo "安装主题"
git clone https://gitcode.com/gh_mirrors/wh/WhiteSur-gtk-theme.git ~/.softwares/WhiteSur-gtk-theme/ --depth 1
chmod +x ~/.softwares/WhiteSur-gtk-theme/install.sh
### install theme for desktop
sudo sh ~/.softwares/WhiteSur-gtk-theme/install.sh -c light -N --shell -i fedora -p 60 -b default -h bigger -normal
sh ~/.softwares/WhiteSur-gtk-theme/install.sh -l
### install theme for firefox & gdm
chmod +x ~/.softwares/WhiteSur-gtk-theme/tweaks.sh
sudo sh ~/.softwares/WhiteSur-gtk-theme/tweaks.sh --gdm -i fedora -noblur   ## gdm theme
sudo sh ~/.softwares/WhiteSur-gtk-theme/tweaks.sh --firefox flat    ## firefox theme