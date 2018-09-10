generating - PhaROSPackage
pharosScriptForPhaROSPackageNamed: packageName

^('#!/usr/bin/env bash
DIR=`rospack find {1}`
	
$DIR/vm/pharo $DIR/image/{1}.image st $DIR/image/scripts/$1.st $@
' format: { packageName }) withUnixLineEndings