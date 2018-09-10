related class building
typeCreationOrder
	TypeCreationOrder ifNil: [ self initTypeCreationOrder ].
	TypeCreationOrder := TypeCreationOrder + 1.
	^ TypeCreationOrder