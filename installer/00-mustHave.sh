#!/usr/bin/env bash

echo update & install packets
apt update
apt install -y vim zsh tmux mc make


echo add presets to user directory
deployerRoot=$(dirname $0)
sourceUserDir=/resource/userDir/
cp -R $deployerRoot$sourceUserDir ~/

echo 
echo ________________
echo $0
echo 
