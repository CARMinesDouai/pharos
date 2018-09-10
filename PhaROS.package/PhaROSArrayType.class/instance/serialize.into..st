initialize
serialize:aValue into: anEncoder
	^ anEncoder encodeArray: aValue of: self relatedType.
