#!/usr/bin/env bash

deployerRoot=$(dirname $(dirname $0))
. $deployerRoot/scripts/.libForVPN.sh
. $deployerRoot/scripts/.lib.sh


if [ "$1" = "base" ]
then
	sudo apt -y install xl2tpd
fi

if [ "$1" = "full" ]
then
	sudo apt -y install xl2tpd
	sudo raaCopy /l2tpVPN/etc/ /etc/
	sudo systemctl enable xl2tpd
fi
