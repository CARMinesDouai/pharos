as yet unclassified
goRandomOf: anArrayOfPoses while: aBlock

	^ PhaROSMoveBaseRandomGoals new
		poses: anArrayOfPoses;
		while: aBlock;
		client: self client;
		start