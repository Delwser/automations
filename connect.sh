#!/bin/sh

#Script criado por: Delwser

#HTB -- Hack The Box
#THM -- Try Hackme

HTBPATH='' #Coloque aqui o path do arquivo .ovpn do Hack The Box.
THMPATH='' # Coloque aqui o path do arquivo .ovpn do TryHackme.

if [ -z "$1" ]; then
	echo "Precisa passar um parametro"
	echo "Exemplo:"
	echo "./connect THM -- (Conectar a VPN do Tryhackme)"
	echo "./connect HTB -- (Conectar a VPN do HackTheBox)"
fi


THM() {
        echo "connecting TryHackMe VPN..."
        sudo openvpn $THMPATH 
}

HTB() {
        echo "connecting HackTheBox VPN..."
        sudo openvpn $HTBPATH

}


if [ "$1" = "THM" ]; then
	echo "Opcao selecionada" $1
	THM
fi

if [ "$1" = "HTB" ]; then
	echo "Opcao selecionada" $1
	HTB
fi
