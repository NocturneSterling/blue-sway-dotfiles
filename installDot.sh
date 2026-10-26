#!/bin/bash
#Not vibe coded, my own shitty human code. If it fails you can just install dependencies yourself :)
installDir=$(pwd)
sudo pacman -S wayland sway waybar mako rofi swaybg brightnessctl nerd-fonts 

read -p "Overwrite previous config? [Y/n]" overrideInput
if [[ overrideInput != "n" || overrideInput != "N" ]]; then
	
	mkdir -p ~/.config/sway
	cp ${installDir}/config ~/.config/sway
	cp -R ${installedDir"/config.d ~/.config/sway
	
	mkdir -p ~/.config/waybar
	cp ${installDir}/config.jsonc ~/.config/waybar
	cp ${installedDir"/style.css ~/.config/waybar
	
else
	printf "Exiting"
fi

read -p "Install dependencies via pacman + yay? [Y/n]" pacmanInput
if [[ pacmanInput != "n" || != "N"]]; then
	sudo pacman -S waybar mako otf-nerd-fonts
	yay -S brightnessctl swaybg
fi