#!/usr/bin/env bash

. ./.lib.sh

test "test123"

exit 0

echo add presets to user directory
deployerRoot=$(dirname $(dirname $0))
sourceUserDir=/resources/userSkel

itemsList=$(ls -a $deployerRoot$sourceUserDir)

for anItem in $itemsList
do
	if [ $anItem = "." ] || [ $anItem = ".." ]
	then
		continue
	fi
	
	aFile=$deployerRoot$sourceUserDir/$anItem
	if [ -d $aFile ]
	then
		echo dir: $aFile
	elif [ -f $aFile ]
	then
		echo fle: $aFile
	else
		echo ERROR: $aFile
		continue
	fi
	cp -R $aFile /etc/skel/
done

echo 
echo ________________
echo $0
echo 
