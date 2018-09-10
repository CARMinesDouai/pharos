testing
isAPossibleValue: aValue 
	^ (aValue isKindOf: Number )and:[ aValue >= 0  and:[ aValue <  4294967296]] .