#!/usr/bin/env bash

deployerRoot=$(dirname $(dirname $0))
. $deployerRoot/scripts/.libForVPN.sh
. $deployerRoot/scripts/.lib.sh


if [ "$1" = "base" ]
then
	apt -y install xl2tpd
fi

if [ "$1" = "full" ]
then
	apt -y install xl2tpd
	raaCopy /l2tpVPN/etc/ /etc/
	systemctl enable xl2tpd
fi
