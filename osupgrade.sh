#!/bin/bash

# Update package information
sudo apt update

# Upgrade installed packages
sudo apt upgrade -y

# Perform distribution upgrade
sudo apt dist-upgrade -y

# Start the release upgrade process
sudo do-release-upgrade

# Display a completion message
echo "Ubuntu upgrade process completed."

# Prompt to reboot the system
read -p "Do you want to reboot the system now? (y/n): " reboot_confirmation

if [ "$reboot_confirmation" == "y" ]; then
    sudo reboot
fi
