initialize-release
dataTypeSizeFor: aValue
	(self isAPossibleValue: aValue ) ifFalse: [
		PhaROSUnexpextedValue signal: 'Unexpected value'.
	].
	^ aValue size + 4.