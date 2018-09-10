encoding
encodeBoolean: aBoolean
	^aBoolean ifTrue: [
		stream nextPut: 1.	
	] ifFalse: [
		stream nextPut: 0.
	]