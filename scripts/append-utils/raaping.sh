#!/usr/bin/env bash

while true; do
	for PREF in "*.." ".*." "..*" "...";do
		HEADER="$PREF"
		LINE="$PREF"
		echo
		for ITEM in $@; do
			HEADER="$HEADER\t$ITEM\t"
			LINE="$LINE\t$(ping -c 1 -t 1 $ITEM | grep icmp_ | cut -d ' ' -f 7)\t"
		done
		echo -e $HEADER
		echo -e $LINE
		sleep 1
	done
done
