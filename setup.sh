#!/bin/bash

DOTFILES_DIR=~/dotfiles

rm ~/.bashrc
rm ~/.vimrc
rm ~/.gitconfig

ln -sf $DOTFILES_DIR/.bashrc ~/.bashrc
ln -sf $DOTFILES_DIR/.vimrc ~/.vimrc
ln -sf $DOTFILES_DIR/.vimrc ~/.vimrc

echo "Dotfiles setup complete!"