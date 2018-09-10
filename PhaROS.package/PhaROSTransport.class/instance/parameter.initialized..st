parameters
parameter: aName initialized: aValue
	^ (master parameter: aName asString initialized: aValue for: node name subscribingTo: comm url) transport: self; yourself .