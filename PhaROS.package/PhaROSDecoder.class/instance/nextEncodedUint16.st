as yet unclassified
nextEncodedUint16
	| n barray |
	self verifyDataAvailability: (2).
	barray := ReadStream on: (stream next:2) reversed.

	n := barray next.
	n := (n bitShift: 8) + barray next.
	^ n
