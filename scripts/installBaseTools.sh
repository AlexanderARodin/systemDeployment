#!/usr/bin/env bash

installLevel=0

case "$1" in
	min)
		installLevel=1
		;;
	mid)
		installLevel=2
		;;
	max)
		installLevel=3
		;;
	*)
		echo unknown key: $1
		exit 1
		;;
esac


packsList=""

if [ $installLevel -le 0 ]
then
	echo there no keys
	exit 1
fi
if [ $installLevel -ge 1 ]
then
	packsList="$packsList iputils-ping zsh tmux tree"
fi
if [ $installLevel -ge 2 ]
then
	packsList="$packsList make vim"
fi
if [ $installLevel -ge 3 ]
then
	packsList="$packsList mc"
fi

echo packeges will be installed: $packsList
apt update
apt install -y $packsList

