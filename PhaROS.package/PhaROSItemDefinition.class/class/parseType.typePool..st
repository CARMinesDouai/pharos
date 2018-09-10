type parsing
parseType:aTypeToken  typePool: aTypePool
	| openBraket closeBraket innerType |
	
	"
		Possible types
		Type
		Type[]
		Type[N]
	"
	
	openBraket := aTypeToken indexOf: $[ .
	openBraket = 0 ifTrue: [ 
		" Is a common type "
		^ aTypePool type:  aTypeToken.
	].



	closeBraket := aTypeToken indexOf:$].
	innerType :=  aTypePool type:( aTypeToken copyFrom: 1 to: openBraket -1 ).
	
	^ openBraket + 1 = closeBraket  ifTrue: [ 
		" Is a typed array  "
		PhaROSArrayType ofType: innerType .
	 ] ifFalse: [ 
		" Is a typed array with fixed size "
		PhaROSArrayFixedLenghtType of: ( aTypeToken copyFrom: openBraket+ 1to: closeBraket -1 ) ofType: innerType
	 ].





	