as yet unclassified
testParameterMultiplePointing
	| parameter parameter2|
	parameter := node parameter: #bla initialized: 1.
	parameter2 := node parameter: #bla initialized:1. 

	parameter set: 1.
	self assert: parameter get = 1.
	self assert: parameter2 get = 1.
	
	parameter2 set:2.
	
	self assert: parameter get = 2.
	self assert: parameter2 get = 2.
