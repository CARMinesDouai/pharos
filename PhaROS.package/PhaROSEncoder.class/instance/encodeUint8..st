encoding
encodeUint8: aSmallInteger 
	"Write a signed integer to the next byte"
	|  topMagnitude |
	
	topMagnitude :=  (2 raisedTo: (8) ).
	self verifyIf: aSmallInteger isBetween: 0 and: topMagnitude .
	
	
	^self encodeByte: aSmallInteger.
