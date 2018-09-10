related class building
initTypeCreationOrder
	TypeCreationOrder := (PhaROSValue allSubclasses 
		select: [ :typeClass | typeClass respondsTo: #typeCreationOrder ]
		thenCollect: [ :each | each typeCreationOrder ]) max
		