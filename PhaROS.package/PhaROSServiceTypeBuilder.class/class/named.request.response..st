as yet unclassified
named: aTypeName  request: aDefinition response: otherDefinition
	| packageTypeName |
	
	packageTypeName := '/' split: aTypeName.
	^ 
	self new request: aDefinition; response: otherDefinition; name: (packageTypeName at:2); package: (packageTypeName at:1); yourself.
