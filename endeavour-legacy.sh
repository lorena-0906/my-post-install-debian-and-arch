#!/bin/bash 

sudo pacman -S kitty fastfetch flatpak git curl  zenity fish gufw discover python-requests btrfs-assistant snapper gnome-disk-utility bashtop baobab wget ncdu ufw code  gamemode --noconfirm

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

flatpak install discord spotify warehouse flatsweep flatseal bitwarden lact com.obsproject.Studio io.missioncenter.MissionCenter com.heroicgameslauncher.hgl io.ente.photos 

clear 

chsh -s "$(command -v fish)"

yay -Sy nvidia-580xx-utils nvidia-580xx-settings nvidia-580xx-dkms opencl-nvidia-580xx --noconfirm 

exit 
