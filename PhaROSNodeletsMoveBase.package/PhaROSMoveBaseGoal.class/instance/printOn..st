printing
printOn: aStream
	('{1}-{2}' format: { id . self statusText }) printOn: aStream.