as yet unclassified
receive: aMessage from: aChannel
	self halt.
	(self imInterestedIn: aMessage from: aChannel) ifTrue: [
		self redirect: (self adapt: aMessage ) from: aChannel at: (self fetchStamp: aMessage).
	].


