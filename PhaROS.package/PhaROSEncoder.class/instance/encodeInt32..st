encoding
encodeInt32: aSmallInteger 
	"Write a signed integer to the next 4 bytes"
	| pos topMagnitude |
	
	topMagnitude :=  (2 raisedTo: (8 * 4) ) / 2.
	self verifyIf: aSmallInteger isBetween: topMagnitude * -1 and: topMagnitude .
	
	
	pos := aSmallInteger < 0
		ifTrue: [(0-aSmallInteger) bitInvert32 + 1]
		ifFalse: [aSmallInteger].
	1 to: 4 do: [:i | stream nextPut: (pos digitAt: i )].
