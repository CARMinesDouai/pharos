pseudo-dsl
named: aName sized: aSize ofType: aType
	^ PhaROSFieldDefinition named: aName type: (self of: aSize ofType: aType forPhaROSTyping new) .