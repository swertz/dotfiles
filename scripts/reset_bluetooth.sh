#!/bin/bash

function fix_bluetooth {
	killall bluetoothd
	modprobe -rf ath3k
	modprobe -rf btusb
	sleep 5
	rfkill block bluetooth
	sleep 5
	modprobe btusb
	sleep 5
	rfkill unblock bluetooth
	bluetoothd -d
}

fix_bluetooth
