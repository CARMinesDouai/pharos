utils
newFile: aName at: aPath with: aContent 
	| file | 
	file := StandardFileStream forceNewFileNamed:  (aPath / aName) pathString.
	file nextPutAll: aContent withUnixLineEndings.
	file flush.
	file close. 
	^ self.