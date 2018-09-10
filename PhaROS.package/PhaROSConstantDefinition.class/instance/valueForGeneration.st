converting
valueForGeneration
	^ (type isKindOf: PhaROSStringType ) ifTrue: [ '''{1}''' format: { value asString } ] ifFalse: [ value asString ].