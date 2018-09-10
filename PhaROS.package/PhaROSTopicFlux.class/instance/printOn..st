dispatching
printOn: aStream

	aStream nextPutAll: ' For all messages that '.
	condition printOn: aStream.
	aStream nextPutAll: String cr.
	aStream nextPutAll: ' with value defined as '.
	adapter printOn: aStream.
	aStream nextPutAll: String cr.
	aStream nextPutAll: ' is executed '.
	handler printOn: aStream.