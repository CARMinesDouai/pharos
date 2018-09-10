properties
doesNotUnderstand: aMessage

	((aMessage selector numArgs = 1) and:[ (aMessage selector indexOf:$: )> 0  ] )ifTrue: [
		| parameter value |
		parameter := ( (':' split: aMessage selector ) at:1).
		value := ( aMessage arguments at: 1).
		self param: parameter value: value asString.
		^ self.
	].

	super doesNotUnderstand: aMessage.