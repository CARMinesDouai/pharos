accessing
outputchannel: anURL
	^ self outputchannels detect: [ : c | c  xmlurl = anURL ].