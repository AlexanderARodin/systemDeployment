#!/usr/bin/env bash

deployerRoot=$(dirname $(dirname $0))
. $deployerRoot/scripts/.lib.sh

sudo raaCopy /etc /etc
