as yet unclassified
nextEncodedFloat32
	| rawFloatValue |
	self verifyDataAvailability: 4.
	rawFloatValue := Float fromIEEE32BitByteArray: (stream next: 4).
	((rawFloatValue isNaN) or: [rawFloatValue isInfinite]) ifTrue: [ ^ rawFloatValue ].
	^ rawFloatValue roundUpTo: self minimumPrecision