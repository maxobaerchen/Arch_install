#!/bin/bash

declare -a programs=(

# terminal utils
  "rsync"
  "openssh"
  "nfs-utils"
  "usbutils"
  "cronie"
  "curl"
  "wget"
  "bash-completion"
  "vim"
  "nano"
  "git"
  "speedtest-cli"


# development utils
  "python"
  "python-pip"
  "pycharm-community-edition"
  "virtualbox"
  "wireshark-qt"
  "gparted"
  "arduino"
  "arduino-avr-core"

# desktop utils
  "spectacle"
  "kate"
  "gwenview"
  "kinfocenter"
  "keepassxc"
  "dragon"
  
)

for i in "${programs[@]}"
do
  pacman -S "$i" --noconfirm --needed
done

# configure newly installed services
usermod -aG wireshark jogi
usermod -aG uucp jogi
usermod -aG lock jogi
pip install pyserial

reboot
