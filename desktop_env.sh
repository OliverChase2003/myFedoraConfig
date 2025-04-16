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
  user-theme@gnome-shell-extensions.gcampax.github.com

echo "安装主题"
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git ~/.softwares/WhiteSur-gtk-theme/ --depth 1
chmod +x ~/.software/WhiteSur-gtk-theme/install.sh
sudo ~/.software/WhiteSur-gtk-theme/install.sh -N --shell -i fedora normal    ## gnome theme
chmoe +x ~/.software/WhiteSur-gtk-theme/tweaks.sh
sudo ~/.software/WhiteSur-gtk-theme/tweaks.sh --gdm -i fedora -noblur   ## gdm theme
sudo ~/.software/WhiteSur-gtk-theme.git/tweaks.sh --firefox flat    ## firefox theme

echo "安装输入法"
mkdir -p ~/.config/ibus/
git clone https://github.com/iDvel/rime-ice.git ./ ~/.config/ibus/rime/ --depth 1
sudo dnf install ibus-rime -y