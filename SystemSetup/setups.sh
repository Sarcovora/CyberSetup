#!/usr/bin/env bash

## Author : Evan Kuo (Sarcovora)
## Github : @Sarcovora

# Installs
apt-get install -qq neovim -y
apt-get install -qq kitty -y
apt-get install -qq curl -y
curl -sS https://starship.rs/install.sh | sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Move files to correct directories
cp -rf ./dotfiles/* ~/.config/
echo 'eval "$(starship init bash)"' >> ~/.bashrc

# Further instructions
echo -e ${BYellow}"[*] Run :PlugInstall in nvim" ${Color_Off}