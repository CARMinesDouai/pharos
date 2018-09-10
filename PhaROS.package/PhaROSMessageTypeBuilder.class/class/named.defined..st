instance creation
named: aTypeName  defined: aDefinition
	| packageTypeName |
	
	packageTypeName := '/' split: aTypeName.
	
	^self named: (packageTypeName at:2) package: (packageTypeName at:1) defined: aDefinition.