test-tf/
testtf_tfMessage
	| definition | 
	definition :=  browser type: 'tf/tfMessage'. 
	self assert: definition typeName = 'tf/tfMessage'.
	self assert: definition md5Sum = '94810edda583a504dfda3829e70d7eec'.
		