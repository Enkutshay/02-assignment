#!/bin/bash


if [[ $EUID -ne 0 ]]; then
  echo "This script must be run as root."
  exit 1
fi


apt update
apt install -y ipcalc
apt install -y beef-xss
apt install -y remmina


if [ $? -eq 0 ]; then
  echo "ipcalc has been successfully installed."
else
  echo "Failed to install ipcalc."
fi
