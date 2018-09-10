encoding
encodeArray: anArray of: aRelatedType
	self encodeUint32: anArray size.
	self encodeFixedLenghtArray: anArray  of: aRelatedType.
	
	