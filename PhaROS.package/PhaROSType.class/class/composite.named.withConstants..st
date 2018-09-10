instance creation
composite: anArray named: aByteString withConstants: aConstantsArray
	^ PhaROSCompositeType named: aByteString definedBy: anArray withConstants: aConstantsArray.