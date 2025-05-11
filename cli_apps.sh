echo "添加 copr"
sudo dnf copr enable lihaohong/yazi -y

echo "安装命令行工具"
sudo dnf install -y \
  fish \
  zsh \
  btop \
  fd \
  bat \
  neovim \
  yazi \
  fzf \
  neomutt \
  stow
