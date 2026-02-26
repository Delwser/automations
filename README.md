# automations
Automações que decidi que seria mais simples do que rodar 2 comandos.



### Connect Script.

O Script 'Connect' foi feito para conectar automaticamente a VPN do Tryhackme e HackTheBox

#### Configure:

Dentro do arquivo do connect tem duas variaveis. HTBPATH e THMPATH, nela você precisa passar o path do seu arquivo .ovpn, segue exemplo:

`HTBPATH='/home/delwser/vpn-files/htb.ovpn'`

`THMPATH='/home/delwser/vpn-files/thm.ovpn'`

(obs: Por favor não de espaço após o "=" pois vai quebrar o script.)

#### Execute:

`./connect.sh THM` --> Conectar a VPN TryHackMe

`./connect.sh HTB` --> Conectar a VPN HackTheBox

Obs: Normalmente eu prefiro criar um alias no .bashrc para usar apenas o comando connect e o parametro.

Segue como deixar no .bashrc

`alias connect='bash [path do connect]'`


### Kali Apt.

O Script "kali-apt" foi feito para instalar automaticamente o Apt do Kali Linux, adicionando a chave gpg e o source.list do Kali.

Para rodar:

`chmod +x kali-apt.sh`
`./kali-apt.sh`

