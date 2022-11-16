#!/usr/bin/env bash

installerDir="./installer"

echo "rise for <$installerDir> EXECUTABLE flag"
chmod +x $installerDir/*

echo "basic config for Git"
git config --global user.name "$1"
git config --global user.email "$1@inbox.ru"
echo
