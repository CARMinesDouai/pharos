encoding
encodefloat32: aFloat
	| encoded |
	encoded := aFloat asFloat asIEEE32BitWord asByteArray reversed.
	encoded :=  (ByteArray new: 4 - encoded size), encoded.
	stream nextPutAll: encoded.