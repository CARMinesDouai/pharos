accessing
check: aValue

	(self isAPossibleValue: aValue ) ifFalse:[ PhaROSUnexpextedValue signal: 'Unexpected value'].