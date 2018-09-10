as yet unclassified
send: aMessageBlock
	^ self execute: [
		channel sendAMessage: aMessageBlock. 
	].