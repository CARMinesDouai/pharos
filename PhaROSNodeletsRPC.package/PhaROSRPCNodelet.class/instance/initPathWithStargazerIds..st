as yet unclassified
initPathWithStargazerIds: aCollection
	ids := aCollection.
	status := nil.
	aCollection size  = 0 ifTrue:[
		self log: 'ERROR: PhaROSRPCNodelet >> initPathWithStargazerIds:: Collection of IDS should not be empty'.
		self error: 'ERROR: PhaROSRPCNodelet >> initPathWithStargazerIds:: Collection of IDS should not be empty'.
	].
	self nodelets robulab relocalize.
	self makeAPath.
	^ true.