tests - support
baseUnserializeFail
	
	self invalidByteArrays do: [
		:val |
		self should: [(self newTestedClassInstance newPacket load: val  )] raise: PhaROSUnexpextedValue.
	].
	