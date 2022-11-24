#!/usr/bin/env bash

# configure Git
userName="$1"
userEmail="$1@inbox.ru"
echo "basic config for Git: $userName <$userEmail>"
git config --global user.name $userName
git config --global user.email $userEmail
echo

deployerScrips=$(dirname $0)/scripts
echo "rise EXECUTABLE flag for <$deployerScrips/*.sh>"
chmod +x $deployerScrips/*.sh


echo 
echo ________________
echo end of: $0
echo 

