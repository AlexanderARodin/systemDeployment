#!/usr/bin/env bash

echo \n\n

deployerRoot=$(dirname $(dirname $0))
sourceUserDir=/resources/userSkel

cp -r $deployerRoot$sourceUserDir/* /etc/skel/

echo 
echo ________________
echo $0
echo 
