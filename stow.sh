work_dir=$(pwd)
cp -r ./stows/ ~/.stows/

## fonts
stow fonts

## bash
rm ~/.bashrc ~/.bash_profile
stow bash

## fish
rm ~/.config/fish/config.fish
stow fish

## rime
stow rime

cd ${work_dir}
