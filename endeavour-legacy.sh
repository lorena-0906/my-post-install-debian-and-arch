#!/bin/bash 

sudo pacman -S kitty fastfetch flatpak git curl  zenity fish gufw discover python-requests btrfs-assistant snapper gnome-disk-utility bashtop baobab wget ncdu ufw code  gamemode --noconfirm

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

clear

yay -S cloudflare-warp-bin --noconfirm 

clear

sudo pacman -Syu 

sudo systemctl start warp-svc

sudo systemctl enable warp-svc

sudo systemctl enable --now warp-svc.service

warp-cli registration new

warp-cli connect

clear 

flatpak install -y spotify warehouse flatsweep flatseal bitwarden lact com.obsproject.Studio io.missioncenter.MissionCenter com.heroicgameslauncher.hgl io.ente.photos com.vscodium.codium  com.discordapp.Discord app.zen_browser.zen

clear 

chsh -s "$(command -v fish)"

yay -Sy nvidia-580xx-utils nvidia-580xx-settings nvidia-580xx-dkms opencl-nvidia-580xx --noconfirm 

curl -fsSL https://linux.toys/install.sh | bash 

exit 
