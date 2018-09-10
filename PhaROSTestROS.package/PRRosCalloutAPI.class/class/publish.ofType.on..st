publish-subscribe
publish: aMessage ofType: aType on: aTopic
	| command |
	
	command := String streamContents: [ :str |
		str	nextPutAll: 'rostopic pub -1 ';
			nextPutAll: aTopic;
			nextPutAll: ' ';
			nextPutAll: aType;
			nextPutAll: ' ';
			nextPutAll: aMessage.
		 ].
	
	OSProcess waitForCommand: command.