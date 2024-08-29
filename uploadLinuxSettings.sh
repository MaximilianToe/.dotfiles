#!/bin/bash
cp -r ~/.config/hypr ~/.config/waybar ~/.config/clipse  ~/.dotfiles/.config
cp -r ~/.wallpapers ~/.dotfiles/
sudo git add .
sudo git commit -m "hypr update"
git push -u origin main
