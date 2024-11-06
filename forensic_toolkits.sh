#!/bin/bash

# Function to install a tool with confirmation
install_tool() {
    echo "Installing $1..."
    eval "$2"
    if [ $? -ne 0 ]; then
        echo "Failed to install $1."
        exit 1
    fi
    echo "$1 installed successfully."
}

# Prompt function for each tool
prompt_install() {
    read -p "Do you want to install $1? (y/n): " choice
    if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
        install_tool "$1" "$2"
    else
        echo "Skipping $1 installation."
    fi
}

# zsteg
prompt_install "zsteg" "sudo apt install -y ruby-full && sudo gem install zsteg"

# steghide
prompt_install "steghide" "sudo apt install -y steghide"

# stegsolve
prompt_install "stegsolve" "sudo apt install -y default-jre && wget http://www.caesum.com/handbook/Stegsolve.jar -O stegsolve.jar && chmod +x stegsolve.jar && mkdir -p ~/bin && mv stegsolve.jar ~/bin/ && echo \"alias stegsolve='cd ~/bin && java -jar stegsolve.jar'\" >> ~/.bashrc && source ~/.bashrc"

# stegseek
prompt_install "stegseek" "sudo apt install -y stegseek"

echo "All selected tools have been installed."
