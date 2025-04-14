if [ -f /etc/bashrc ]; then
  source /etc/bashrc
fi

## user specified env 
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
  PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

## proxy settings
export http_proxy=http://127.0.0.1:7897
export https_proxy=http://127.0.0.1:7897

# prompt
set -o vi # set vi mode prompt
export PS1=" \w \e[33m$\e[0m "

# alias
alias ll="ls -l"
alias la="ls -la"