accessing
subscribingChannelFor: aNode 
	^ self channels detect: [ : ch | ch isInput and: [ ch owner = aNode ]] .
