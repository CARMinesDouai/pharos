writing
writeFile
	| op name |
	
	name :=  self fileName,'.launch'.
	op := StandardFileStream forceNewFileNamed:name.
	op nextPutAll: self xml. 
	op flush.
	op close. 
	
	^name 