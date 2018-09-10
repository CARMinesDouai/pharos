as yet unclassified
nextEncodedInt64
	| n firstDigit barray |
	
	self verifyDataAvailability: (8).
	barray := stream next: 8.
	barray size = 8 ifFalse: [
		PhaROSUnexpextedValue signal:' there are less than 8 bytes in the stream '.
	].
	barray := ReadStream on: (barray) reversed.

	n := firstDigit := barray next.
	n := (n bitShift: 8) + barray next.
	n := (n bitShift: 8) + barray next.
	n := (n bitShift: 8) + barray next.
	
	n := (n bitShift: 8) + barray next.
	n := (n bitShift: 8) + barray next.
	n := (n bitShift: 8) + barray next.
	n := (n bitShift: 8) + barray next.
	
	firstDigit >= 128 ifTrue: [n := -16r10000000000000000 + n].  "decode negative 64-bit integer"
	^ n
