#!/bin/bash

sudo pacman -S --needed $(comm -12 <(pacman -Slq | sort) <(sort pkglist.txt))
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si
yay -S --needed < aurlist.txt