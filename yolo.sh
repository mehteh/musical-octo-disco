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
brew bundle --file ./Brewfile
mkdir ~/Code
cd ~/Code
git clone https://github.com/mehteh/musical-octo-disco.git





