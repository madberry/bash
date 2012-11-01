#!/bin/bash
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
