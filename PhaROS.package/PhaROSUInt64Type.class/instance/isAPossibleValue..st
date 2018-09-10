testing
isAPossibleValue: aValue 
	^ (aValue isKindOf: Number )and:[ aValue >= 0  and:[ aValue <  18446744073709551616]] .