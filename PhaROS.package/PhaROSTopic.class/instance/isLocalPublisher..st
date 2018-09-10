accessing
isLocalPublisher:  anURL
	^ self outputchannels anySatisfy:  [ : c | c  xmlurl = anURL ].