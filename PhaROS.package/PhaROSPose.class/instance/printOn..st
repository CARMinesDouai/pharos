printing
printOn: aStream 
	('[{1},{2}]' format: { position . orientation }) printOn: aStream.