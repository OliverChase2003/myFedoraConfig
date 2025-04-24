echo "安装字体"
## Nerd Fonts install
git clone https://gitcode.com/gh_mirrors/ne/nerd-fonts.git ~/.softwares/nerd-fonts/ --depth 1
chmod +x ~/.softwares/nerd-fonts/install.sh
sh ~/.softwares/nerd-fonts/install.sh JetBrainsMono
sh ~/.softwares/nerd-fonts/install.sh CascadiaMono

## MiSans
wget -P ~/Downloads/ https://hyperos.mi.com/font-download/MiSans.zip
unzip ~/Downloads/MiSans.zip -d ~/Downloads/MiSans/
mv ~/Downloads/MiSans/MiSans/ttf/ ~/.local/share/fonts/MiSans/
fc-cache -fv