
#!/bin/bash 

sudo apt install kitty fastfetch flatpak git curl  zenity fish gufw discover vte3 python-requests gnome-disk-utility bashtop baobab wget ncdu ufw code 

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

clear 

flatpak install vesktop spotify warehouse flatsweep flatseal bitwarden

curl -fsSL https://linux.toys/install.sh | bash

clear

sudo apt update && sudo apt upgrade 

sudo mkdir -p --mode=0755 /usr/share/keyrings

curl -fsSL https://pkg.cloudflareclient.com/pubkey.gpg | sudo gpg --yes --dearmor --output /usr/share/keyrings/cloudflare-warp-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/cloudflare-warp-archive-keyring.gpg] https://pkg.cloudflareclient.com/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/cloudflare-client.list

sudo apt update && sudo apt install cloudflared

warp-cli registration new

warp-cli connect

chsh -s "$(command -v fish)"
