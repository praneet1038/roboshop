#!/bin/bash

# Function to check if the script is running as root
check_root() {
    if [ "$EUID" -ne 0 ]; then
        echo "Please run this script as root"
        exit 1
    fi
}

# Function to install Nginx
install_nginx() {
    echo "Installing Nginx..."

    dnf install nginx -y

    if [ "$?" -eq 0 ]; then
        echo "Nginx installed successfully"
    else
        echo "Nginx installation failed"
    fi
}

# Function to install Git
install_git() {
    echo "Installing Git..."

    dnf install git -y

    if [ "$?" -eq 0 ]; then
        echo "Git installed successfully"
    else
        echo "Git installation failed"
    fi
}

# Function to install Vim
install_vim() {
    echo "Installing Vim..."

    dnf install vim -y

    if [ "$?" -eq 0 ]; then
        echo "Vim installed successfully"
    else
        echo "Vim installation failed"
    fi
}

# Call the functions
echo "Starting script..."

check_root

echo "Root check completed"

install_nginx

echo "Nginx function completed"

install_git

echo "Git function completed"

install_vim

echo "Vim function completed"

echo "Script completed"