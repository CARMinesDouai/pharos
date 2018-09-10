test-bond/
testbond_Status
	| definition | 
	definition :=  browser type: 'bond/Status'. 
	self assert: definition typeName = 'bond/Status'.
	self assert: definition md5Sum = 'eacc84bf5d65b6777d4c50f463dfb9c8'.
		