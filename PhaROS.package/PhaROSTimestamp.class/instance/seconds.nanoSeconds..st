private
seconds: anAmountOfSeconds  nanoSeconds: anAmountOfNSeconds 
	timestamp := (DateAndTime fromUnixTime: anAmountOfSeconds) + (Time seconds: 0 nanoSeconds: anAmountOfNSeconds ).
	^ timestamp.