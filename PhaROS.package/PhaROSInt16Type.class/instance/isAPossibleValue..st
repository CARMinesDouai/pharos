testing
isAPossibleValue: aSmallInteger 
	^(aSmallInteger isKindOf: SmallInteger) and: [
		aSmallInteger > -32769 and: [  aSmallInteger < 32768 ]
	].