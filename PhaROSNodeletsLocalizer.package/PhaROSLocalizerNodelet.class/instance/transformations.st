as yet unclassified
transformations
	transformations ifNil: [
		transformations := 	self paralellize looping broadcastEntitiesAsTF.
	].