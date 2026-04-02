#!/bin/bash
#install dependencies
# !!!!!!!!! IN DEVELOPMENT DON'T USE
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
	
	mkdir -p /usr/local/share/fonts
	cd /usr/local/share/fonts
else
	printf "Exiting"
fi