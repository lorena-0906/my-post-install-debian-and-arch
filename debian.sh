#!/usr/bin/env bash

sudo apt install kitty fastfetch flatpak git curl  zenity fish gufw discover gnome-disk-utility bashtop baobab wget ncdu ufw  gufw -y

clear 

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

clear 

sudo apt install plasma-discover-backend-flatpak

sudo apt install gnome-software-plugin-flatpak

flatpak install -y spotify warehouse flatsweep flatseal bitwarden com.obsproject.Studio io.missioncenter.MissionCenter com.heroicgameslauncher.hgl io.ente.photos com.vscodium.codium  com.discordapp.Discord  app.zen_browser.zen

sudo ufw enable

clear

sudo apt update && sudo apt upgrade 

chsh -s /usr/bin/fish 

curl -fsSL https://linux.toys/install.sh | bash 

exit 

