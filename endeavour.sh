#!/bin/bash 

sudo pacman -S kitty fastfetch flatpak git curl  zenity fish gufw discover python-requests btrfs-assistant snapper gnome-disk-utility bashtop baobab wget ncdu ufw code  gamemode

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

curl -fsSLJO https://linux.toys/install.sh

chmod +x install.sh

./install.sh

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

