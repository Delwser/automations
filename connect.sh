#!/bin/sh

#Script criado por: Delwser

#HTB -- Hack The Box
#THM -- Try Hackme
#HKC -- Hacking Club

HTBPATH='' # Coloque aqui o path do arquivo .ovpn do Hack The Box.
THMPATH='' # Coloque aqui o path do arquivo .ovpn do TryHackme.
HKCPATH='' # Coloque aqui o path do arquivo .ovpn do Hacking Club.

if [ -z "$1" ]; then
	echo "Precisa passar um parametro"
	echo "Exemplo:"
	echo "./connect THM -- (Conectar a VPN do Tryhackme)"
	echo "./connect HTB -- (Conectar a VPN do HackTheBox)"
	echo "./connect HKC -- (Conectar a VPN do HackTheBox)"
fi


THM() {
        echo "connecting TryHackMe VPN..."
        sudo openvpn $THMPATH 
}

HTB() {
        echo "connecting HackTheBox VPN..."
        sudo openvpn $HTBPATH

}

HKC() {
        echo "connecting Hacking Club VPN..."
        sudo openvpn $HKCPATH

}

if [ "$1" = "THM" ]; then
	echo "Opcao selecionada" $1
	THM
fi

if [ "$1" = "HTB" ]; then
	echo "Opcao selecionada" $1
	HTB
fi

if [ "$1" = "HKC" ]; then
	echo "Opcao selecionada" $1
	HKC
fi
