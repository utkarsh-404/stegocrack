#!/bin/bash

# Install dependencies for Ubuntu/Debian-based systems and Termux (Android)
clear
echo "Installing necessary dependencies..."

# Colors
g="\033[32m"  # Green
r="\033[31m"  # Red

# Linux (Ubuntu/Debian) Installation
if [[ $(uname -o) == "GNU/Linux" ]]; then
    sudo apt-get update 
    sudo apt-get install -y python3-pip python3-pillow  # Install Python 3 and Pillow for image processing
    pip3 install -r requirements.txt  # Install dependencies from requirements.txt
    mv src/stegocrack /usr/bin  # Move the stegocrack tool to /usr/bin for easy access
    echo -e "${g}[•] ${r}Installation completed."
    echo -e "${g}[•] ${r}You can run it by executing the command '${g}stegocrack --help${r}'"
    exit 0

# Android (Termux) Installation
elif [[ $(uname -o) == "Android" ]]; then
    pkg update
    pkg install python3-pip python3-pillow  # Install Python 3 and Pillow for image processing
    pip3 install -r requirements.txt  # Install dependencies from requirements.txt
    mv src/stegocrack /data/data/com.termux/files/usr/bin  # Move the tool to Termux binary location
    echo -e "${g}[•] ${r}Installation completed."
    echo -e "${g}[•] ${r}You can run it by executing the command '${g}stegocrack --help${r}'"
    exit 0
fi

# If not Linux or Android
echo -e "${r}[•] Unsupported Operating System. Please run the script on Linux or Android (Termux)."
exit 1
