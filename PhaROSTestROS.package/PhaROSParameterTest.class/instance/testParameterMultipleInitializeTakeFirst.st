as yet unclassified
testParameterMultipleInitializeTakeFirst
	| parameter parameter2|
	parameter := node parameter: #bla initialized: 1.
	

	parameter set: 3.
	self assert: parameter get = 3.
	
	
	parameter2 := node parameter: #bla initialized:1. 
	
	self assert: parameter get = 3.
	self assert: parameter2 get = 3.
	
