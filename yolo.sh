#!/bin/bash

# === Variables ===
SCRIPT_NAME="Mac Software Installer and Customizer"
VERSION="1.1"
AUTHOR="mehteh"
BREW_SCRIPT="https://raw.githubusercontent.com/mehteh/musical-octo-disco/main/setup-scripts/install-brew.sh"
BREWFILE="https://raw.githubusercontent.com/mehteh/musical-octo-disco/main/setup-scripts/Brewfile"
WORKINGDIR="/tmp"


echo "===================================="
echo "  $SCRIPT_NAME"
echo "  Version: $VERSION by $AUTHOR"
echo "===================================="


cd $WORKINGDIR
curl $BREW_SCRIPT | bash
curl -o ./Brewfile $BREWFILE
brew install mas --quiet
brew bundle --file ./Brewfile --quiet
mkdir ~/Code
cd ~/Code
git clone https://github.com/mehteh/musical-octo-disco.git
mkdir dev.local\ SSL\ Cert
cd dev.local\ SSL\ Cert
mkcert -install
mkcert dev.local
openssl pkcs12 -export -out dev.local.pfx -inkey dev.local.key -in dev.local.crt -passout pass:
cd ~/Code
git clone https://github.com/dracula/iterm.git
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"



