publishing
localPublisherNode: anURL to: aTopic
	| link |
	
	link := PhaROSInternalNodeLink new xmlurl: anURL ; yourself .
	(aTopic outputchannel: anURL ) subscribe: link. 
	
	^ link.