childs
param: aName value: aValue
	^ (self  findOrCreateParam: aName) value: aValue; yourself.
	