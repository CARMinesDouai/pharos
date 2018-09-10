testing
isAPossibleValue: aFloat 
	| float32 |
	
	(aFloat isKindOf: Number) ifFalse: [ ^ false. ] .

	float32 := (aFloat asFloat roundUpTo: 0.0001) truncateTo: 0.01.
	
	^(float32  isKindOf: Float) and: [
		float32  = 0 or: [
			| encoder decoder stream |
			stream := WriteStream on: (ByteArray new: 4).
			encoder := PhaROSEncoder on:stream .
			encoder encodefloat32: float32 .
			encoder flush.
			stream := ReadStream on: stream contents.
			decoder := PhaROSDecoder on: stream.
			
			(float32 abs - decoder nextEncodedFloat32 abs) abs < 0.01 
		].
	]