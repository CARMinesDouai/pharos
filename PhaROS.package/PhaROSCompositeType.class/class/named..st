construction
named: aByteString

	types at:aByteString asSymbol ifPresent:[ :p | ^ p ].
	
	^ types at: aByteString asSymbol put:  (super new typeName: aByteString ; yourself).