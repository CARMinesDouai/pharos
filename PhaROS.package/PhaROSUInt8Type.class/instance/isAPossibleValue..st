testing
isAPossibleValue: aValue
	^ (aValue isKindOf: Number) and: [
		aValue >= 0 and:[ aValue < 256 ]
	].
	