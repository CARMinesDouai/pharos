test-roscpp/
testroscpp_Logger
	| definition | 
	definition :=  browser type: 'roscpp/Logger'. 
	self assert: definition typeName = 'roscpp/Logger'.
	self assert: definition md5Sum = 'a6069a2ff40db7bd32143dd66e1f408e'.
		