construction
named: aByteString definedBy: anArray withConstants: aConstantsArray.
	^ (self named: aByteString) useTypeDefinition:  anArray ; useConstants: aConstantsArray yourself.