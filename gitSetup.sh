#!/usr/bin/env bash

## Author : Evan Kuo (Sarcovora)
## Github : @Sarcovora


## Directories ----------------------------
GIT_DIR="$HOME/Github"

# Install Github
install_github() {
	echo -e ${BBlue}"\n[*] Installing Git and making directories..." ${Color_Off}

	mkdir -p "$GIT_DIR"
	sudo apt-get install -qq git -y
}

# Clone Sarcovora/ConfigFiles
clone_configs() {
	echo -e ${BBlue}"\n[*] Cloning Repository..." ${Color_Off}
	git clone https://github.com/Sarcovora/CyberSetup.git
}

# Main
main() {
	install_github
	clone_configs
}

main