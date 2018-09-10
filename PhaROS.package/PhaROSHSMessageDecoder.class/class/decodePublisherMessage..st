decoding
decodePublisherMessage: aByteArray 

	^ self decode: aByteArray using: PhaROSHSMessageHeader newPublisher.