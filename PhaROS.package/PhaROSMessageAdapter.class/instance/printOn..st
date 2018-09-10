as yet unclassified
printOn: aStream
	chainOfAdaption do: [ : adaption | adaption printOn: aStream. aStream nextPutAll: '\>' ].