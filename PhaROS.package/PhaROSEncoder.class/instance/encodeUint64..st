encoding
encodeUint64: aNumber

	| val  topMagnitude |
	
	topMagnitude :=  (2 raisedTo: (8 * 8) ).
	self verifyIf: aNumber  isBetween: 0 and: topMagnitude .
	
	val :=  aNumber asByteArray.
	val := (ByteArray new: (8 - val size)), val.
	val := val reversed.
	stream nextPutAll: val.
	