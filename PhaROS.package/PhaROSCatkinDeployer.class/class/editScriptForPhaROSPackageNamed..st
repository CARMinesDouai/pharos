generating - PhaROSPackage
editScriptForPhaROSPackageNamed: packageName

^('#!/usr/bin/env bash
DIR=`rospack find {1}`
	
$DIR/vm/pharo $DIR/image/{1}.image $@
' format: { packageName }) withUnixLineEndings