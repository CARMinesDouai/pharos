testing
testCallingAServiceWithNoArgs
	self startUpTurtle.
	service :=  master lookupService: '/reset' with: self callerId.
	self shouldnt: [service call] raise:  Error