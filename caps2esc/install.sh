#!/bin/bash

if [ "$EUID" -ne 0 ]; then
	echo "Please run as root"
	exit
fi

if ! hash yay 2>/dev/null; then
	exit
fi

udevmon=$(which udevmon) envsubst < ./udevmon.service > /etc/systemd/system/udevmon.service

cat ./udevmon.yaml > /etc/udevmon.yaml

systemctl enable udevmon
