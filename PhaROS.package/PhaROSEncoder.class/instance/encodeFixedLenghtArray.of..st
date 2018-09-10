encoding
encodeFixedLenghtArray: anArray of: aRelatedType
	anArray do: [
		:item |
		aRelatedType serialize: item into: self.
	].
	