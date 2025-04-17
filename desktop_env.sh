echo "安装必要的软件包"
sudo dnf install -y \
  python3-pip

echo "安装常用的 GNOME 扩展"
pip install gnome-extensions-cli
gnome-extensions-cli install \
user-theme@gnome-shell-extensions.gcampax.github.com \
system-monitor@gnome-shell-extensions.gcampax.github.com \
drive-menu@gnome-shell-extensions.gcampax.github.com \
blur-my-shell@aunetx \
compiz-windows-effect@hermes83.github.com \
compiz-alike-magic-lamp-effect@hermes83.github.com \
caffeine@patapon.info \
clipboard-indicator@tudmotu.com \
gnome-fuzzy-app-search@gnome-shell-extensions.Czarlie.gitlab.com \
autohide-battery@sitnik.ru \
move-date@fthx \
appindicatorsupport@rgcjonas.gmail.com


echo "安装主题"
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git ~/.softwares/WhiteSur-gtk-theme/ --depth 1
chmod +x ~/.softwares/WhiteSur-gtk-theme/install.sh
## WhiteSur GTK Theme
sudo sh ~/.softwares/WhiteSur-gtk-theme/install.sh -c light -N --shell -i fedora -p 60 -b default -h bigger -normal    
sh ~/.softwares/WhiteSur-gtk-theme/install.sh -l
chmod +x ~/.softwares/WhiteSur-gtk-theme/tweaks.sh
sudo sh ~/.softwares/WhiteSur-gtk-theme/tweaks.sh --gdm -i fedora -noblur   ## gdm theme
firefox   ## launch firefox for the first time
sleep 1000  ## wait til firefox init success
kill $(pidof firefox) ## kill all the firefox processes
sudo sh ~/.softwares/WhiteSur-gtk-theme/tweaks.sh --firefox flat    ## firefox theme

echo "安装输入法"
mkdir -p ~/.config/ibus/
git clone https://github.com/iDvel/rime-ice.git ~/.config/ibus/rime/ --depth 1
sudo dnf install ibus-rime -y