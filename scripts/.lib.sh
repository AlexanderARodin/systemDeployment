function test {
	echo test of: $1
}

function raaCopy {
	resourcesDir=$(dirname $(dirname $0))/resources/$1
	itemsList=$(ls -a $resourcesDir)
	destinationDir=$2
	
	for anItem in $itemsList
	do
		if [ $anItem = "." ] || [ $anItem = ".." ]
		then
			continue
		fi
		
		aFile=$resourcesDir/$anItem
		if [ -d $aFile ]
		then
			echo dir: $aFile
		elif [ -f $aFile ]
		then
			echo fle: $aFile
		else
			echo ERROR: $aFile
			continue
		fi
		cp -R $aFile $destinationDir
	done
}
