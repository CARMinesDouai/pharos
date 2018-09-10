printing
printOn: aStream
	super printOn: aStream.
	aStream 
		crlf; 
		nextPutAll: '"**** Header ****"';
		crlf.

	 header keysAndValuesDo: [ : fieldName : fieldValue |
			aStream crlf; tab.
			fieldName printOn: aStream.
			aStream nextPutAll: ' -> '.
			fieldValue printOn: aStream
	].


