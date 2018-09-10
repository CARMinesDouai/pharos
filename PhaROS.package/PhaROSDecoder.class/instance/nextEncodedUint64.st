as yet unclassified
nextEncodedUint64
	| n firstDigit barray |
	
	self verifyDataAvailability: (8).
	barray := ReadStream on: (stream next:8) reversed.

	n := firstDigit := barray next.
	n := (n bitShift: 8) + barray next.
	n := (n bitShift: 8) + barray next.
	n := (n bitShift: 8) + barray next.
	
	n := (n bitShift: 8) + barray next.
	n := (n bitShift: 8) + barray next.
	n := (n bitShift: 8) + barray next.
	n := (n bitShift: 8) + barray next.
	
	^ n
