as yet unclassified
nextEncodedInt16
	| n firstDigit barray |
	self verifyDataAvailability: (2).	
	barray := ReadStream on: (stream next:2 ) reversed.

	n := firstDigit := barray next.
	n := (n bitShift: 8) + barray next.

	firstDigit >= 128 ifTrue: [n := -16r10000 + n].  "decode negative 16-bit integer"
	^ n
