service
subscribers 
	| copy | 
	mutex critical: [
		copy := subscribers copy.
	].
	^copy