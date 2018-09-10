accessing
subscribingChannelFor: aNode throught: aTransport
	^ self channels detect: [ : ch | ch isInput and: [ ch owner = aNode ]] ifNone: [ 
		aTransport createInputChannelForTopic: self .
	].
