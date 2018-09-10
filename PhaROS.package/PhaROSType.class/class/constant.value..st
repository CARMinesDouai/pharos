pseudo-dsl
constant: aTypeName value: aValue 
	^ PhaROSConstantDefinition named: aTypeName typedAs: self new withValue: aValue.