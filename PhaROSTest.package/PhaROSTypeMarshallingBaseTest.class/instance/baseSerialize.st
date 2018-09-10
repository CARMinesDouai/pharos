tests - support
baseSerialize
		validValues do: [
			:val |
			self assert: val key dump = val value.
			self assert: val key dump size = ((val key type dataTypeSizeFor: val key value) + 4).
		].
	