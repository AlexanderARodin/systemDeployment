#!/usr/bin/env bash

echo update & install packets
apt update
apt install -y vim zsh tmux mc make


echo add presets to $userDir
deployerRoot=$(dirname $0)
cp $deployerRoot ~/

echo 
echo ________________
echo $0
echo 
