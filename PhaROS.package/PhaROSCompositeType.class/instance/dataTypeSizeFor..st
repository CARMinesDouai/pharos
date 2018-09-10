serializing
dataTypeSizeFor: aValue 
	"beware of recursive structures!"
	| acc |
	acc := 0.
	
	typeDefinition keysAndValuesDo:[ :attributeName :type |
			acc := acc + (type dataTypeSizeFor: (aValue perform: attributeName asSymbol)).
	 ].

	^ acc.