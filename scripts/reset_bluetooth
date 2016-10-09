#!/bin/bash

function fix_bluetooth {
	killall bluetoothd
	modprobe -rf ath3k
	modprobe -rf btusb
	sleep 5
	rfkill block 1
	sleep 5
	modprobe btusb
	sleep 5
	rfkill unblock 1
	bluetoothd -d
}

fix_bluetooth
