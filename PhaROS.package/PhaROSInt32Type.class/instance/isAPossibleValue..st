testing
isAPossibleValue: aNumber
	^(aNumber isKindOf: Number )and: [
		aNumber >	-2147483649 and: [ aNumber  < 2147483648 ]
	]
