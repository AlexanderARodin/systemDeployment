#!/usr/bin/env bash

echo add presets to user directory
deployerRoot=$(dirname $(dirname $0))
sourceUserDir=/resources/userSkel
itemsList=$(ls -a $deployerRoot$sourceUserDir)
for anItem in $itemsList
do
	if [ anItem = "." || anItem = ".." ]
	then
		echo x
		continue
	fi
	
	aFile=$deployerRoot$sourceUserDir$anItem
	if [ -d $aFile ]
	then
		echo dir: aFile
	elif [ -f $aFile ]
	then
		echo fle: aFile
	else
		echo ERROR: aFile
	fi
#	cp -R $deployerRoot$sourceUserDir$anItem ~/
done

echo 
echo ________________
echo $0
echo 
