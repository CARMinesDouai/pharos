testing
isAPossibleValue: aNumber
	^( aNumber isKindOf: Number )and: [
		aNumber > -9223372036854775809  and: [ aNumber <  9223372036854775808].
	]
	