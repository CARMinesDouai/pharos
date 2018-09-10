accessing
entity: aSmallInteger 
	^ self scannedEntities detect: [ : e | e id = aSmallInteger ]