*PhaROS
asRoStByteArray
	|byteStream|
	byteStream := ByteArray new writeStream.
	byteStream nextPutAll: self key asRoStByteArray.
	byteStream nextPut: $= asInteger.
	byteStream nextPutAll: self value asRoStByteArray.
	^byteStream contents 
