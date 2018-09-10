as yet unclassified
nextEncodedInt32
	| n firstDigit barray |
	
	self verifyDataAvailability: (4).
	barray := ReadStream on: (stream next: 4) reversed .

	n := firstDigit := barray next.
	n := (n bitShift: 8) + barray next.
	n := (n bitShift: 8) + barray next.
	n := (n bitShift: 8) + barray next.

	
	firstDigit >= 128 ifTrue: [n := -16r100000000 + n].  "decode negative 32-bit integer"
	^ n
