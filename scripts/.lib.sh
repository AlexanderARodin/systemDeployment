
function raaCopy {
	resourcesDir=$(dirname $(dirname $0))/resources$1
	itemsList=$(ls -a $resourcesDir)
	destinationDir=$2
	
	for anItem in $itemsList
	do
		if [ $anItem = "." ] || [ $anItem = ".." ]
		then
			continue
		else
			aFile=$resourcesDir/$anItem
			if [ -d $aFile ]
			then
				echo --->  dir: $aFile
			elif [ -f $aFile ]
			then
				echo ---> file: $aFile
			else
				echo ERROR: $aFile
				continue
			fi
			cp -R $aFile $destinationDir/
		fi
	done
}

function downLoadSwift {
	swiftLink="https://download.swift.org/swift-5.7.1-release/ubuntu2204/swift-5.7.1-RELEASE/swift-5.7.1-RELEASE-ubuntu22.04.tar.gz"
	swiftExtrName="/swift-5.7.1-RELEASE-ubuntu22.04/usr"
	swiftDir=/usr/swift-usr
	swiftTar=/swiftData.tar.gz
	
	mkdir $swiftDir
	wget -O $swiftDir$swiftTar $swiftLink
	
	cd $swiftDir
	tar xzf .$swiftTar
	mv .$swiftExtrName/* ./
	if rm -d .$swiftExtrName
	then
		if rm -d .$(dirname $swiftExtrName)
		then
			rm .$swiftTar
		fi
	fi
	rm -Rd $swiftDir/include/unicode
	cp -R $swiftDir/* /usr/
	rm -Rd $swiftDir
}

function downLoadSwiftDepend {
	apt-get install -y \
			binutils \
			git \
			gnupg2 \
			libc6-dev \
			libcurl4-openssl-dev \
			libedit2 \
			libgcc-9-dev \
			libpython3.10 \
			libsqlite3-0 \
			libstdc++-9-dev \
			libxml2-dev \
			libz3-dev \
			pkg-config \
			tzdata \
			unzip \
			zlib1g-dev
}

