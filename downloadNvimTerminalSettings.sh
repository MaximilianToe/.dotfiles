#!/bin/bash
git pull origin
rm -r ~/.config/nvim/*
mkdir -p ~/.config/nvim
cp -rf  ~/.dotfiles/.config/nvim/* ~/.config/nvim
rm -r ~/.config/alacritty/*
mkdir -p ~/.config/alacritty
cp -rf ~/.dotfiles/.config/alacritty ~/.config
cp -rf ~/.dotfiles/.zshrc ~/.zshrc
cp -rf ~/.dotfiles/.p10k.zsh ~/.p10K.zsh
cp -rf ~/.dotfiles/.oh-my-zsh/custom ~/.oh-my-zsh
