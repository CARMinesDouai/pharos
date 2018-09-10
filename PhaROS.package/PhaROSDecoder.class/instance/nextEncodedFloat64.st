as yet unclassified
nextEncodedFloat64
	self verifyDataAvailability: (8).
	^ (stream next:8) doubleAt: 1 bigEndian: false.