accessing
publishingChannelFor: aNode throught: aTransport
	^ self channels detect: [ : ch | ch owner = aNode and:[ ch isOutput ] ] ifNone: [ 
		 aTransport createOutputChannelForTopic: self 
	].