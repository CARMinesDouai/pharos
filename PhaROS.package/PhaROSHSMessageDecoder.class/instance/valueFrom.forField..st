header-loading
valueFrom: fieldValueBytes forField: fieldName
	fieldName = 'latching' ifTrue: [^self booleanFrom: fieldValueBytes].
	^self stringFrom: fieldValueBytes