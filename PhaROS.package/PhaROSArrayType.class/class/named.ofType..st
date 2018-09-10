pseudo-dsl
named: aName ofType: aType
	^ PhaROSFieldDefinition named: aName type: (self  ofType: aType forPhaROSTyping new) .