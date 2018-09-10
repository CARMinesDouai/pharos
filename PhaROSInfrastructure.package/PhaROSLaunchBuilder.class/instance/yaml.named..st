writing
yaml: aBlock named: aName
	|builder outName| 
	builder := PhaROSYamlBuilder new .
	aBlock value: builder.
	outName := '/tmp/', aName.
	builder writeFile: outName.
	^ outName	