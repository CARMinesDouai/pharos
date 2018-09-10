testing
testUnregisterPublisher
	| currentData callerURI |
	self testRegisterPublisher.
	
	callerURI :=  'http://127.0.0.1:9090/'.
	currentData :=  master unregisterPublisher: self callerId  from: 'rosout'  andCallerUri: callerURI.
	self assert: currentData = 1.
	
	currentData :=  master unregisterPublisher: self callerId  from: 'rosout'  andCallerUri: callerURI.
	self assert: currentData = 0.
	
	