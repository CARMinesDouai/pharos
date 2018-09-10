testing
testGetSystemState
	| currentSystemState |
	currentSystemState :=  master getSystemState: self callerId .	
	self assert: currentSystemState isValidState
	
	

