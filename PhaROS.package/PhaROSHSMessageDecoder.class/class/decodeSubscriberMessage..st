decoding
decodeSubscriberMessage: aStream 

	^ self decode: aStream using: PhaROSHSMessageHeader newSubscriber.