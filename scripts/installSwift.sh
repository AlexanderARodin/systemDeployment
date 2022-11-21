#!/usr/bin/env bash

deployerRoot=$(dirname $(dirname $0))
. $deployerRoot/scripts/.lib.sh

#raaCopy /etc/skelRAA ~/

# downloading
swiftLink="https://download.swift.org/swift-5.7.1-release/ubuntu2204/swift-5.7.1-RELEASE/swift-5.7.1-RELEASE-ubuntu22.04.tar.gz"
swiftDir=/usr/swift-usr

mkdir $swiftDir
echo 2
echo 2
echo 2
echo 2
echo 2
wget -O 	$swiftDir/swiftData.tar.gz $swiftLink
echo 3
echo 3
echo 3
echo 3
echo 3
cd $swiftDir
tar xzf 	./swiftData.tar.gz
echo 000
echo 000
echo 000

exit 0

apt-get install -y \
			binutils \
			git \
			gnupg2 \
			libc6-dev \
			libcurl4-openssl-dev \
			libedit2 \
			libgcc-9-dev \
			libpython3.8 \
			libsqlite3-0 \
			libstdc++-9-dev \
			libxml2-dev \
			libz3-dev \
			pkg-config \
			tzdata \
			unzip \
			zlib1g-dev

