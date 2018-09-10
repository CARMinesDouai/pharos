as yet unclassified
fileout: aFileName
	| fl |
	
	fl := StandardFileStream forceNewFileNamed: aFileName.
	fl nextPutAll: (self entities inject: '' into: [ : acc : ent | acc, ent asDump, '---']).
	fl flush.
	fl close.