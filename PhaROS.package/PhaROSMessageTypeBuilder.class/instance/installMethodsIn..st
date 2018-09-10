related class building
installMethodsIn: aClass

	self definition fields do: [ : field | 
		aClass compile: field setter.
		aClass compile: field getter.
		field hasToInstallHelper ifTrue: [ 
			aClass compile: field helper.
		].
	 ].
	
	aClass compile: ((self definition fields collect: #initializer) inject: 'initialize', String crlf, String tab, 'super initialize.', String crlf into:[ :acc :line | acc, line ]).
	
	"save ros definitions on class-side too"
	aClass class compile: 'rosTypeName ', String lf, '^', self name printString.
	aClass class compile: 'rosTypeDefinition ', String lf, '^', self rosdefinition printString.	
	aClass class compile: 'rosMd5Sum ', String lf, '^', (PhaROSTypeBrowser instance md5Sum: self name) printString.
	aClass class compile: 'typeCreationOrder ', String lf, '^', self typeCreationOrder asString
		