#!/bin/bash

# Check for Homebrew, install if not found
if ! command -v brew &> /dev/null; then
    echo "Homebrew not found. Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

# Verify installation
if command -v brew &> /dev/null; then
    echo "Homebrew installed successfully!"
else
    echo "Something went wrong. Please check the installation logs."
fi
