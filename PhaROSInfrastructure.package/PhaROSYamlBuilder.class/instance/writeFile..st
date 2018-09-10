as yet unclassified
writeFile: aFileName
	 (StandardFileStream forceNewFileNamed: aFileName) nextPutAll: self yaml; close. 