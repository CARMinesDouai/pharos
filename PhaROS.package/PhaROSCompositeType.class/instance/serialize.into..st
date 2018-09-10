serializing
serialize:aValue into: aFLEncoder 

	^ self typeDefinition keysAndValuesDo:  [ :name :type |
		type serialize: (aValue getAt: name) into: aFLEncoder.
	].
	
