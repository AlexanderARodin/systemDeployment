#!/usr/bin/env bash

deployerRoot=$(dirname $(dirname $0))
. $deployerRoot/scripts/.lib.sh

#raaCopy /etc/skelRAA ~/

# downloading
# https://download.swift.org/swift-5.7.1-release/ubuntu2204/swift-5.7.1-RELEASE/swift-5.7.1-RELEASE-ubuntu22.04.tar.gz


apt-get install \
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

echo after reqInStLl