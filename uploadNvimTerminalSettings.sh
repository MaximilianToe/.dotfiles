#!/bin/bash

cp -rf /home/max/.config/nvim/ /home/max/.dotfiles/.config
cp -rf /home/max/.config/alacritty /home/max/.dotfiles/.config
cp -rf /home/max/.zshrc /home/max/.dotfiles
cp -rf /home/max/.oh-my-zsh/custom /home/max/.dotfiles/.oh-my-zsh
cp -rf /home/max/.p10k.zsh /home/max/.dotfiles

sudo git add .
sudo git commit -m "update"
git push -u origin main

