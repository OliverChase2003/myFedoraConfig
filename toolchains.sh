echo "添加 copr"
sudo dnf copr enable lihaohong/yazi -y

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

echo "安装工具链"
sudo dnf install -y \
  gcc arm-none-eabi-gcc \
  gdb arm-none-eabi-gdb \
  java-openjdk-21

