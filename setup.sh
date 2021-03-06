# Install all packages through apt-get
./install_packages.sh

# Create symlinks on home directory
ln -s ~/.dotfiles/.aliases ~/.aliases
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.p10k.zsh ~/.p10k.zsh
ln -s ~/.dotfiles/.z.sh ~/.z.sh
ln -s ~/.dotfiles/.p10k.zsh ~/.p10k.zsh

# Run setup for zsh
./zsh_setup.sh

# Run setup for node
./node_setup.sh

