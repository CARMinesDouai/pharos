as yet unclassified
testParameterTypeCheck
	| parameter |
	parameter := node parameter: #bla initialized: 1.

	self should: [ parameter set: 'String'  ] raise: Error description:  'The parameter setting should reject invalid type'	.
	