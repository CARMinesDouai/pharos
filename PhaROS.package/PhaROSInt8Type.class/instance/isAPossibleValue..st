testing
isAPossibleValue: aSmallInteger 
	^(aSmallInteger isKindOf: Number) and: [ aSmallInteger > -129 and: [ aSmallInteger < 128 ] ].