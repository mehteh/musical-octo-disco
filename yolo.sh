#!/bin/bash

# === Variables ===
SCRIPT_NAME="Mac Software Installer and Customizer"
VERSION="1.0"
AUTHOR="Yeti"


# === Functions ===
display_header() {
    echo "===================================="
    echo "  $SCRIPT_NAME"
    echo "  Version: $VERSION by $AUTHOR"
    echo "===================================="
}

option_one() {
    wget -qO- https://raw.githubusercontent.com/mehteh/musical-octo-disco/main/setup-scripts/install-brew.sh | bash

}

option_two() {
    echo "You selected Option 2!"
    # Add your logic for Option 2 here
}

option_three() {
    echo "You selected Option 3!"
    # Add your logic for Option 3 here
}

# === Main Menu ===
main_menu() {
    while true; do
        echo
        echo "Please select an option:"
        echo "1. Install Brew and Frequently Used Tools"
        echo "2. Install and configure SSL Dev Tools"
        echo "3. Apply Preferences and Customizations"
        echo "9. Do it all!"
        echo -n "Enter your choice [1-4] or x to exit: "

        read -r choice

        case $choice in
            1)
                option_one
                ;;
            2)
                option_two
                ;;
            3)
                option_three
                ;;
            4)
                echo "Exiting... Goodbye!"
                exit 0
                ;;
            x)
                echo ""
                ;;
                
            *)
                echo "Invalid choice. Please select a valid option."
                ;;
        esac
    done
}

# === Script Execution ===
display_header
main_menu
