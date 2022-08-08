#!/bin/bash

# This script is used to setup the environment for the Nishanth's Lab Setup.

# Update the Package Manager.
sudo apt-get update

# Install curl, wget, gnupg software-properties-common, and apt-transport-https.
sudo apt-get install -y curl wget git gnupg software-properties-common apt-transport-https

# Install the HashiCorp GPG key.
wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

# Verify the key's fingerprint.
gpg --no-default-keyring \
    --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
    --fingerprint


# Add the official HashiCorp repository to your system
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list

# Download the package information from HashiCorp.
sudo apt-get update

# Install Terraform from the new repository.
sudo apt-get install -y terraform


# Verify the installation
terraform --version

# Enable tab completion in Bash
touch ~/.bashrc

terraform -install-autocomplete


# Enable tab completion in ZSH
touch ~/.zshrc

terraform -install-autocomplete

