*PhaROS
debug: aLog
	PhaROSSystem debugMode ifTrue: [
		self log: aLog]