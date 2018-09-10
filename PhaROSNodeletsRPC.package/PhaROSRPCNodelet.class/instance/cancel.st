as yet unclassified
cancel
	currentGoal ifNotNil: [
		currentGoal cancel.	
	].

	PureROSRobulabGoal allInstances do: #cancel.
	status := PhaROSRPCNodelet finished.
	currentGoal := nil.
	path := nil.
	
	
	^ true.