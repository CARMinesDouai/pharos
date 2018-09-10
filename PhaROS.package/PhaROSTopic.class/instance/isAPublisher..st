accessing
isAPublisher: aNode
	^ self outputchannels anySatisfy: [ : c | c owner = aNode ] 