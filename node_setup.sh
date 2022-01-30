# Create global node_modules on home
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo "export PATH=~/.npm-global/bin:$PATH" >> ~/.profile

# Install n
npm i -g n

# Upgrade node
sudo n lts

# Upgrade npm
npm i -g npm

