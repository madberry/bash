#!/bin/bash
#In Kubuntu(KDE) the NetworkManager seems to disconnect the VPN
#for no reason.  This script will keep you connect to you VPN.
#You can added it as an autostart script.
#System Settings->Startup and Shutdown add as script here.
while [ "true" ]
do
	VPNCON=$(nmcli con status)
	if [[ $VPNCON != *Netherlands* ]]; then
		echo "Disconnected, trying to reconnect..."
		(sleep 1s && nmcli con up uuid af103c23-adc1-4b83-a8a5-fb8e105b43f3)
	else
		echo "Already connected !"
	fi
	sleep 30
done
