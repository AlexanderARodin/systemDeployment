#!/usr/bin/env bash

userName="$1"
userEmail="$1@inbox.ru"
echo "basic config for Git: $userName <$userEmail>"
git config --global user.name $userName
git config --global user.email $userEmail
echo

deployerRoot=$(dirname $0)
for aFolder in /scripts
do
	dirPath=$deployerRoot$aFolder
	echo "rise EXECUTABLE flag for <$dirPath/*.sh>"
	chmod +x $dirPath/*.sh
done

echo 
echo ________________
echo end of: $0
echo 

#$deployerRoot/scripts/globalUserPreset.sh
#$deployerRoot/scripts/installBaseTools.sh
$deployerRoot/scripts/installSwift.sh

echo -0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-0-
#
