#!/bin/bash 

sudo pacman -S kitty fastfetch flatpak git curl  zenity fish gufw discover vte3 python-requests btrfs-assistant snapper gnome-disk-utility htop baobab wget ncdu ufw code 

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

curl -fsSL https://linux.toys/install.sh | bash

clear

yay -S cloudflare-warp-bin

clear

sudo pacman -Syu 

sudo systemctl start warp-svc

sudo systemctl enable warp-svc

sudo systemctl enable --now warp-svc.service

warp-cli registration new

warp-cli connect

clear 

flatpak install vesktop spotify warehouse flatsweep flatseal bitwarden lact

clear 

chsh -s "$(command -v fish)"

