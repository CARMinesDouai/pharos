service
stop
	status := PhaROSRPCNodelet finished.
	currentGoal ifNotNil: [
		currentGoal cancel.
		PureROSRobulabGoal allInstances do:#cancel.
	].
	path := nil.
	
	currentGoal := nil.
	^ true.