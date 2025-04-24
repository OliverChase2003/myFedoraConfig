work_dir=$(pwd)
stow_dir="~/.stows"
cp -r ./stows/ ${stow_dir}
cd ${stow_dir}

## fonts
stow fonts

## bash
rm ~/.bashrc ~/.bash_profile
stow bash

## fish
rm ~/.config/fish/config.fish
stow fish

## nvim 
git clone https://github.com/LazyVim/starter ~/.config/nvim

## rime
git clone https://github.com/iDvel/rime-ice.git ~/.config/ibus/rime/ --depth 1
sudo dnf install -y ibus-rime

cd ${work_dir}
