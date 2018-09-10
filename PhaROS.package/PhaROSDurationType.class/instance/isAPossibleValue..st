as yet unclassified
isAPossibleValue: aDuration
	^ (aDuration isKindOf: Duration) and: [
		aDuration secondsField  < 4294967296 and: [
			aDuration nanoSecondsField  < 4294967296 
		]
	].