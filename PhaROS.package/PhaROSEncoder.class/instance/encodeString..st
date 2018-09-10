encoding
encodeString: aString
	self encodeUint32: aString size.
	self encodeBytes: aString asByteArray. 
	