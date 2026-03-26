#!/bin/bash

#instalar o kali-apt


# adicionando o  source.list do Kali Linux.
echo "# Kali Repo:" | sudo tee -a /etc/apt/sources.list
echo "deb http://http.kali.org/kali kali-rolling main contrib non-free non-free-firmware" | sudo tee -a /etc/apt/sources.list

# instalando a chave gpg para uso do apt.

sudo apt install wget
sleep 5
wget https://http.kali.org/kali/pool/main/k/kali-archive-keyring/kali-archive-keyring_2025.2_all.deb
sleep 5
sudo dpkg -i kali-archive-keyring_2025.2_all.deb
sleep 3
rm kali-archive-keyring_2025.1_all.deb
echo "Finalizado - Tente um apt update."
