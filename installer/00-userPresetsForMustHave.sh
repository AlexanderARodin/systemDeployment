#!/usr/bin/env bash

echo add presets to user directory
deployerRoot=$(dirname $(dirname $0))
sourceUserDir=/resources/userDir/
itemsList=".zshrc" ".vimrc"
for anItem in $itemsList
do
	cp -R $deployerRoot$sourceUserDir$anItem ~/
done

echo 
echo ________________
echo $0
echo 
