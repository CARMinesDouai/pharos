as yet unclassified
isAPossibleValue: aFloat 
	
	
	^(aFloat isKindOf: Float)
	
	
	" and: [
		aFloat = 0 or: [
			| encoder decoder stream |
			stream := WriteStream on: (ByteArray new: 4).
			encoder := PhaROSEncoder on:stream .
			encoder encodefloat32: aFloat.
			encoder flush.
			stream := ReadStream on: stream contents.
			decoder := PhaROSDecoder on: stream.
			aFloat closeTo: decoder nextEncodedFloat64
		].
	]"