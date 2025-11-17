#!/bin/bash

echo -n "Toggle Touchpad On/Off [0/1]: "
read TOUCHPAD

case $TOUCHPAD in	
	0)
		hyprctl keyword 'device[apple-spi-touchpad]:enabled' 'false'
		;;

	1)
		hyprctl keyword 'device[apple-spi-touchpad]:enabled' 'true'
		;;
	*)
		echo "[Error] Invalid choice"
		;;
esac
