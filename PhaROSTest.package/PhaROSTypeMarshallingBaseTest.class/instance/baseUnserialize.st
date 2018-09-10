tests - support
baseUnserialize

	validValues do: [
		:val |
		self assert: ((self newTestedClassInstance newPacket load: val value ) value closeTo: val key value).
	].
	


	
	
		