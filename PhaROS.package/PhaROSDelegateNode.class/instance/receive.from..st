service
receive: aMessage from: aChannel
	^ receiverDelegate receive: aMessage from: aChannel
