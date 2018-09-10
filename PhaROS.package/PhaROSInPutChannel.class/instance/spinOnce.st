as yet unclassified
spinOnce
[[
	
	publisherFetcher value.
	
	2 second asDelay wait.
	
] on: ConnectionTimedOut do: [ :e | 
	
].]  on: Error do: [
	: e | self log: e messageText.
	e signal.
]