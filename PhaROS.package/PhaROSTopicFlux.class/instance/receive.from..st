dispatching
receive: aMessage from: aChannel
	^ self execute: [
		(self imInterestedIn: aMessage from: aChannel) ifTrue: [
			lastTimeStamp := DateAndTime now.
			self redirect: (self adapt: aMessage ) from: aChannel at: (self fetchStamp: aMessage).
		].
	]