as yet unclassified
testParameterCreation
	|parameter|
	parameter := node parameter: #bla initialized: 1.
	
	parameter set: 1.
	self assert: parameter get = 1.
