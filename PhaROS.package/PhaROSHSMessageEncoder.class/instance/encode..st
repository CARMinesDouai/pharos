encoding
encode: aTcpHandshakeMessage
	| byteStream bodyBytes handshakeMessageBytes  |
		
	byteStream := ByteArray new writeStream.
	handshakeMessageBytes := self encodeMessage: aTcpHandshakeMessage.

	
	byteStream nextPutAll: (self byteArrayForSizeOf: handshakeMessageBytes ).
	byteStream nextPutAll: handshakeMessageBytes .	

	
	^ byteStream contents.