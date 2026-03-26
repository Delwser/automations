# Automations
Automações que decidi que seria mais simples do que rodar 2 comandos.



### Connect Script.

O Script 'Connect' foi feito para conectar automaticamente a VPN do Tryhackme e HackTheBox

#### Instalation

`sudo apt install wget`

`sudo apt install dos2unix`

`sudo apt install openvpn`

`wget https://raw.githubusercontent.com/Delwser/automations/refs/heads/main/connect.sh`

`dos2unix connect.sh`

#### Configure:

Dentro do arquivo do connect tem duas variaveis. HTBPATH e THMPATH, nela você precisa passar o path do seu arquivo .ovpn, segue exemplo:

`HTBPATH='/home/delwser/vpn-files/htb.ovpn'`

`THMPATH='/home/delwser/vpn-files/thm.ovpn'`

(obs: Por favor não de espaço após o "=" pois vai quebrar o script.)

#### Adicional

—  Tornando-o binário para executar de qualquer lugar —
`mv connect.sh /usr/bin/connect`

#### Execute:

`./connect.sh THM` --> Conectar a VPN TryHackMe

`./connect.sh HTB` --> Conectar a VPN HackTheBox

OU — Caso você tenha tornado-o um binário

`connect THM`

`connect HTB`

##

### Kali Apt.

O Script "kali-apt" foi feito para instalar automaticamente o Apt do Kali Linux, adicionando a chave gpg e o source.list do Kali.

Às vezes temos o problema do arquivo vir como "with CRLF line terminators" — (pode verificar usando o comando "file" no arquivo do kali-apt.sh) caso ele venha com essa versão será necessário baixar o dos2unix. Deixei os comandos abaixo de como executar todo o processo.

Para rodar:

`sudo apt install dos2unix`

`dos2unix kali-apt.sh`

`chmod +x kali-apt.sh`

`./kali-apt.sh`

