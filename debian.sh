
#!/bin/bash 

sudo apt install kitty fastfetch flatpak git curl  zenity fish gufw discover gnome-disk-utility bashtop baobab wget ncdu ufw  gufw

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

clear 

sudo apt install plasma-discover-backend-flatpak

sudo apt install gnome-software-plugin-flatpak

flatpak install vesktop spotify warehouse flatsweep flatseal bitwarden

curl -fsSL https://linux.toys/install.sh | bash

sudo ufw enable

clear

sudo apt update && sudo apt upgrade 

curl -fsSL https://pkg.cloudflareclient.com/pubkey.gpg | sudo gpg --yes --dearmor --output /usr/share/
keyrings/cloudflare-warp-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ trixie main" | sudo tee /etc/apt/sources.list.d/cloudflare-client.list

sudo apt update && sudo apt install cloudflare-warp

warp-cli registration new

warp-cli connect

chsh -s /usr/bin/fish 

curl -fsSL https://linux.toys/install.sh | bash

