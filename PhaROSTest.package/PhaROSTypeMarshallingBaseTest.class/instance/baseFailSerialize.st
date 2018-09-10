tests - support
baseFailSerialize

	invalidValues do: [
			:val |
		
			self should:[val dump ]  raise: PhaROSUnexpextedValue.
		].
	