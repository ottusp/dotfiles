# Install all packages through apt-get
./install_packages.sh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Create symlinks on home directory
ln -s ~/.dotfiles/.aliases ~/.aliases
ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
