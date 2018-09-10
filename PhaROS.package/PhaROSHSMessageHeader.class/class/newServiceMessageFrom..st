instance creation decoding
newServiceMessageFrom: aStream
	^PhaROSHSMessageDecoder decodeServiceMessage: aStream.