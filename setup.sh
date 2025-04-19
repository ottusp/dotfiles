#!/bin/bash

sudo apt install update -y
sudo apt install upgrade -y

# Install all packages through default package manager
./install_packages.sh

# Create symlinks on home directory
ln -s ~/.dotfiles/.aliases ~/.aliases
ln -s ~/.dotfiles/.nilo_aliases ~/.nilo_aliases
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.nilo_zshrc ~/.nilo_zshrc
ln -f -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.p10k.zsh ~/.p10k.zsh

# Run setup for zsh
./zsh_setup.sh

# Run setup for node
./node_setup.sh

