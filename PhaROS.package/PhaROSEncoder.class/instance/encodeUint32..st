encoding
encodeUint32: aSmallInteger 
 | topMagnitude |
	
	topMagnitude :=  (2 raisedTo: (8 * 4) ).
	self verifyIf: aSmallInteger isBetween: 0 and: topMagnitude .
	
	"Append to the receiver an Integer as the next 4 bytes."
	1 to: 4 do: [:i | stream nextPut: (aSmallInteger digitAt: i)].