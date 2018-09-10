as yet unclassified
named: aTypeName package: aPackageName request: aRequestDefinition response: aResponseDefinition
	
	|response request|
	
	request := PhaROSMessageTypeBuilder named: (aTypeName,'Request') 
											  package: aPackageName 
											  defined: aRequestDefinition .
	response := PhaROSMessageTypeBuilder named: (aTypeName,'Response') 
											    package: aPackageName 
											    defined: aResponseDefinition .
	
	^ self new request: request; response: response; name: aTypeName; package: aPackageName; yourself.