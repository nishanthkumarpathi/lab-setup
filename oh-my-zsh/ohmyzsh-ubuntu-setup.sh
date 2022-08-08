#!/bin/bash

# This script is used to setup the environment for the Nishanth's Lab Setup.

# Update the Package Manager.
sudo apt-get update

# Install curl, wget, and git.
sudo apt-get install -y curl wget git

# Install Fonts Awesome.
sudo apt-get install -y fonts-font-awesome

# Install zsh
echo "Install zsh"
sudo apt-get install zsh

# Verify the Installation of zsh
echo "Verify the Installation of zsh"
zsh --version

# Set ZSH as the default shell
echo "Set ZSH as the default shell"
chsh -s $(which zsh)

# Activate the ZSH
echo "Activate the ZSH"
source ~/.zshrc

# Install oh-my-zsh
echo "Install oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# Activate the ZSH
echo "Activate the ZSH"
source ~/.zshrc

# Download zsh-autosuggestions
echo "Download zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions 

# Download zsh-syntax-highlighting
echo "Download zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# Clone the powerlevel10k theme repository
echo "Clone the powerlevel10k theme repository"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# Ensure the Plugin is Configured
# Edit ~/.zshrc file, find plugins=(git) replace plugins=(git) with :
# plugins=(git zsh-autosuggestions zsh-syntax-highlighting)