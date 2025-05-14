#!/bin/bash

# Check for Homebrew, install if not found
if ! command -v brew &> /dev/null; then
    echo "Homebrew not found. Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
    exit 0
fi

# Verify installation
if command -v brew &> /dev/null; then
    echo "Homebrew installed successfully!"
    exit 0
else
    echo "Something went wrong. Please check the installation logs."
    exit 1
fi
