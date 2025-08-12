#!/bin/bash

# === Variables ===
SCRIPT_NAME="Mac Software Installer and Customizer"
VERSION="1.0"
AUTHOR="mehteh"
BREW_SCRIPT="https://raw.githubusercontent.com/mehteh/musical-octo-disco/main/setup-scripts/install-brew.sh"
WORKINGDIR="/tmp"


echo "===================================="
echo "  $SCRIPT_NAME"
echo "  Version: $VERSION by $AUTHOR"
echo "===================================="

cd $WORKINGDIR
curl $BREW_SCRIPT | bash



