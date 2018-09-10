decoding
decodeUnknownMessageHeader: aStream 

	^ self decode: aStream using: PhaROSHSMessageHeader genericHeader.