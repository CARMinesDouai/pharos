encoding
encodeInt8: aSmallInteger 
	"Write a signed integer to the next byte"
	| val topMagnitude |
	topMagnitude :=  (2 raisedTo: (8) ) / 2.
	self verifyIf: aSmallInteger isBetween: topMagnitude * -1 and: topMagnitude .
	
	(aSmallInteger >= 0 and: [aSmallInteger < 128]) ifTrue:[ val :=  aSmallInteger ].
	(aSmallInteger < 0 and: [aSmallInteger > -129]) ifTrue:[ val:= aSmallInteger abs bitInvert8 + 1].
		
	val ifNil: [ self error: 'out of bounds.'] .
	^self encodeByte: val.
