#!/bin/bash

DOTFILES_DIR=~/.dotfiles

rm ~/.bashrc
rm ~/.vimrc
rm ~/.gitconfig
rm ~/.npmrc

ln -sf $DOTFILES_DIR/.bashrc ~/.bashrc
ln -sf $DOTFILES_DIR/.vimrc ~/.vimrc
ln -sf $DOTFILES_DIR/.npmrc ~/.npmrc
ln -sf $DOTFILES_DIR/.gitconfig ~/.gitconfig

echo "Dotfiles setup complete!"
