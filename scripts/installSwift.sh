#!/usr/bin/env bash

deployerRoot=$(dirname $(dirname $0))
. $deployerRoot/scripts/.lib.sh

if [ $1 != "libs" ]
then
	echo SWIIIIIIIIF
#	downLoadSwift
fi

if [ $1 != "swift" ]
then
	echo LIIIIIIIIIiiiiiibs
#	downLoadSwiftDepend
fi
