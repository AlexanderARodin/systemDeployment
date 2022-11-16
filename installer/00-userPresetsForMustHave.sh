#!/usr/bin/env bash

echo add presets to user directory
deployerRoot=$(dirname $(dirname $0))
sourceUserDir=/resources/userDir/
cp -R $deployerRoot$sourceUserDir ~/

echo 
echo ________________
echo $0
echo 
