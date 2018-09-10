testing
isAPossibleValue: aNumber
	^(aNumber isKindOf: Number) and:[ aNumber >= 0 and: [ aNumber < 65536]].
	