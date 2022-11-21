#!/usr/bin/env bash

deployerRoot=$(dirname $(dirname $0))
. $deployerRoot/scripts/.lib.sh

# downloading
swiftLink="https://download.swift.org/swift-5.7.1-release/ubuntu2204/swift-5.7.1-RELEASE/swift-5.7.1-RELEASE-ubuntu22.04.tar.gz"
swiftExtrName="/swift-5.7.1-RELEASE-ubuntu22.04/usr"
swiftDir=/usr/swift-usr
swiftTar=/swiftData.tar.gz

mkdir $swiftDir
wget -O 	$swiftDir$swiftTar $swiftLink

cd $swiftDir
tar xzf 	.$swiftTar
mv .$swiftExtrName/* ./
if rm -d .$swiftExtrName
then
	if rm -d .$(dirname $swiftExtrName)
	then
		rm .$swiftTar
	fi
fi

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

