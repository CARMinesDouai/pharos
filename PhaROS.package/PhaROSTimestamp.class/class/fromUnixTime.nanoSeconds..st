as yet unclassified
fromUnixTime: anAmountOfSeconds  nanoSeconds: anAmountOfNSeconds 
	^ super new timestamp: ((DateAndTime fromUnixTime: anAmountOfSeconds)  + (Time seconds: 0 nanoSeconds: anAmountOfNSeconds ));
				  yourself.