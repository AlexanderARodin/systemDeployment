#!/usr/bin/env bash

deployerRoot=$(dirname $(dirname $0))
. $deployerRoot/scripts/.libForVPN.sh


if [ "$1" = "base" ]
then
	apt -y install xl2tpd
fi
