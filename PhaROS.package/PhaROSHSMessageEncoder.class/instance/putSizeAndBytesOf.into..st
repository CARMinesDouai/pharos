encoding-private
putSizeAndBytesOf: anObject into: byteStream
		|bytes|
		bytes := anObject asRoStByteArray.
		byteStream nextPutAll: (self byteArrayForSizeOf: bytes).
		byteStream nextPutAll: bytes
