#!/usr/bin/env bash

HEADER="____"
for ITEM in $@; do
	HEADER="$HEADER\t$ITEM\t"
done


while true; do
	echo
	echo -e $HEADER
	for PREF in "#..." "##.." "###." "####" ".###" "..##" "...#";do
		LINE="$PREF"
		for ITEM in $@; do
			LINE="$LINE\t$(ping -c 1 -t 1 $ITEM | grep icmp_ | cut -d ' ' -f 7)\t"
		done
		echo -e $LINE
		sleep 1
	done
done
