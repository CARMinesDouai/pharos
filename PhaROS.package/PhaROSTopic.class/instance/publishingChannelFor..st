accessing
publishingChannelFor: aNode 
	^ self channels detect: [ : ch | ch isOutput and: [ ch owner = aNode ] ].