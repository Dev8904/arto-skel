#!/bin/bash
#set -e
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# add arto-repo to /etc/pacman.conf

if grep -q arto_repo /etc/pacman.conf; then
  echo "arto_repo is already in /etc/pacman.conf"
else
echo '

[arto_repo]
SigLevel = Optional TrustedOnly
Server = https://Dev8904.github.io/$repo/$arch' | sudo tee -a /etc/pacman.conf
fi

# first get the database in before unselecting the lines underneath
# remove the "#" on the next line

#sudo pacman -Sy

#sudo pacman -S --noconfirm --needed edu-candy-beauty-arc-git
#sudo pacman -S --noconfirm --needed edu-candy-beauty-arc-mint-grey-git
#sudo pacman -S --noconfirm --needed edu-candy-beauty-arc-mint-red-git
#sudo pacman -S --noconfirm --needed edu-candy-beauty-tela-git
#sudo pacman -S --noconfirm --needed edu-papirus-dark-tela-git
#sudo pacman -S --noconfirm --needed edu-papirus-dark-tela-grey-git
#sudo pacman -S --noconfirm --needed edu-vimix-dark-tela-git

echo "################################################################"
echo "################### done"
echo "################################################################"