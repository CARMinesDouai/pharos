encoding
encodeUint16: aSmallInteger 
	"Append to the receiver an Integer as the next two bytes."
	
	| array a b topMagnitude |
	
	topMagnitude :=  (2 raisedTo: (8 * 2) ).
	self verifyIf: aSmallInteger isBetween: 0 and: topMagnitude .
	
	a := aSmallInteger bitShift: -8.
	b :=  aSmallInteger bitAnd: 255.
	array := (ByteArray new), b asByteArray , a asByteArray .

	stream nextPutAll: array.
