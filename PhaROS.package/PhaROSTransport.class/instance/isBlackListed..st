publishing
isBlackListed: anUrl
	^ blacklist at: anUrl ifPresent: [ : val | val > 3 ] ifAbsent: [ false ].