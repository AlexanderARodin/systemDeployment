#!/usr/bin/env bash

echo add presets to user directory
deployerRoot=$(dirname $(dirname $0))
sourceUserDir=/resources/userDir
itemsList=$(ls -a $deployerRoot$sourceUserDir)
for anItem in $itemsList
do
	aFile=$deployerRoot$sourceUserDir$anItem
	if [ -d $aFile ]
	then
		echo dir: aFile
	else
		echo fle: aFile
	fi
#	cp -R $deployerRoot$sourceUserDir$anItem ~/
done

echo 
echo ________________
echo $0
echo 
