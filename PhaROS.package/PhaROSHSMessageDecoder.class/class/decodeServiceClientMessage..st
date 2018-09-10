decoding
decodeServiceClientMessage: aStream 
	^ self decode: aStream using: PhaROSHSMessageHeader newServiceClient.