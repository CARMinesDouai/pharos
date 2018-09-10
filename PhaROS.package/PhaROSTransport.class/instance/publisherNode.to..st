publishing
publisherNode: anURL to: aTopic
	
	^ (aTopic isLocalPublisher: anURL) ifTrue: [
		
			self localPublisherNode: anURL to: aTopic. 
		] ifFalse: [
		
			self remotePublisherNode: anURL to: aTopic. 
	   ].