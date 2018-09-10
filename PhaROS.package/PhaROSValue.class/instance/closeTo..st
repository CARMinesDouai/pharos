accessing
closeTo: anOtherValue

	^ (self class = anOtherValue class) and:[
		| allSatisfy|
		
		allSatisfy := true. 
		values keysAndValuesDo: [ :key : val | allSatisfy := allSatisfy and: [val closeTo: (anOtherValue getAt: key)]. ].
		allSatisfy.
	].