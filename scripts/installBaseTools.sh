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
if [ $installLevel -le 1 ]
then
	packsList="packsList zsh tmux tree"
fi
if [ $installLevel -le 2 ]
then
	packsList="packsList make vim"
fi
if [ $installLevel -le 3 ]
then
	packsList="packsList mc"
fi

echo $packsList
exit 0


apt update


apt install -y packsList
vim mc make
