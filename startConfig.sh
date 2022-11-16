#!/usr/bin/env bash

userName="$1"
userEmail="$1@inbox.ru"
echo "basic config for Git: $userName <$userEmail>"
git config --global user.name $userName
git config --global user.email $userEmail
echo

deployerRoot=$(dirname $0)
installerPath="/installer"
echo "rise EXECUTABLE flag for <.$installerPath/*>"
chmod +x $deployerRoot$installerPath/*

echo 
echo ________________
echo $0
echo 
