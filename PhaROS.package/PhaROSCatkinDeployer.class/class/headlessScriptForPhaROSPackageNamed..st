generating - PhaROSPackage
headlessScriptForPhaROSPackageNamed: packageName

^('#!/usr/bin/env bash
DIR=`rospack find {1}`
	
$DIR/vm/pharo --nodisplay  $DIR/image/{1}.image st $DIR/image/scripts/$1.st $@
' format: { packageName }) withUnixLineEndings