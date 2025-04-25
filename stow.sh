work_dir=$(pwd)
stow_dir="~/.stows"
cp -r ./stows/ ${stow_dir}
cd ${stow_dir}

## bash
rm ~/.bashrc ~/.bash_profile
stow bash

## fish
rm ~/.config/fish/config.fish
stow fish

cd ${work_dir}
