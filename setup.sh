#!/bin/bash

DOTFILES_DIR=~/.dotfiles

rm ~/.bashrc
rm ~/.vimrc
rm ~/.gitconfig
rm ~/.profile
rm ~/.npmrc

ln -sf $DOTFILES_DIR/.bashrc ~/.bashrc
ln -sf $DOTFILES_DIR/.vimrc ~/.vimrc
ln -sf $DOTFILES_DIR/.gitconfig ~/.gitconfig
ln -sf $DOTFILES_DIR/.profile ~/.profile
ln -sf $DOTFILES_DIR/.npmrc ~/.npmrc

echo "Symbolic Link Created!"

# Install Necessay Packages
sudo dpkg --set-selections < installed_packages.txt
sudo apt-get update
sudo apt-get dselect-upgrade

echo "Packages Installed!"

# Global Config
sudo rm -rf /etc
mkdir /etc
sudo tar -zxvf etc_configs_backup.tar.gz /etc

# User Config
rm -rf ~/.config
mkdir ~/.config
tar -zxvf user_configs_backup.tar.gz ~/.config

echo "Dotfiles setup complete!"
