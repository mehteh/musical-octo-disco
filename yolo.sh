#!/bin/bash

# === Variables ===
SCRIPT_NAME="Mac Software Installer and Customizer"
VERSION="1.0"
AUTHOR="Yeti"
BREW_SCRIPT="https://raw.githubusercontent.com/mehteh/musical-octo-disco/main/setup-scripts/install-brew.sh"


echo "===================================="
echo "  $SCRIPT_NAME"
echo "  Version: $VERSION by $AUTHOR"
echo "===================================="

wget -qO- $BREW_SCRIPT | bash



