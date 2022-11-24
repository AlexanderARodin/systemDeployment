#!/usr/bin/env bash

deployerRoot=$(dirname $(dirname $0))
. $deployerRoot/scripts/.libForVPN.sh

if [ "$1" != "tst" ]
then
	tst
fi
