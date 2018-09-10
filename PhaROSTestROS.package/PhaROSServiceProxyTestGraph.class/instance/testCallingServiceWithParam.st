testing
testCallingServiceWithParam
	| response |
	self startUpTurtle.
	service :=  master lookupService: '/spawn' with: self callerId.
	response := service call: [ : m | m x: 2.0; y: 2.0; name: 'turtleTest' ].
	1 second asDelay wait.
	self assert: (response) name = 'turtleTest'
	