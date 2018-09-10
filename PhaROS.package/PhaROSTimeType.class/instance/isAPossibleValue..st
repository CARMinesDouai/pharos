as yet unclassified
isAPossibleValue: aTime 
	^ (aTime isKindOf: PhaROSTimestamp) and: [
		aTime seconds  < 4294967296 and: [
			aTime nanoSeconds  < 4294967296 
		]
	].