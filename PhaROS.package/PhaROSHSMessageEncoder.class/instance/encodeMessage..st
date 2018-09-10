encoding
encodeMessage: aTcpHandshakeMessage
	| byteStream |
	
	PhaROSHeaderVerifier new verify: aTcpHandshakeMessage.
	byteStream := ByteArray new writeStream.
	
	aTcpHandshakeMessage attributesDo:  [
		: association |
		self putSizeAndBytesOf: association into: byteStream
	].

	^byteStream contents 
	