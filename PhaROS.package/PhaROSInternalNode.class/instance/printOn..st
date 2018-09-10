output
printOn: aStream
	aStream nextPutAll: 'Node-', (self name ifNil:'').